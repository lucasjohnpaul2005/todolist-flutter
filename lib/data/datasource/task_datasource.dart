import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import '../../core/failure.dart';
import '../../domain/entities/task_entity.dart';

/// Mirrors FirebaseTaskRepository.ts's Firestore access exactly:
/// path users/{userId}/tasks/{id}, id is a stringified millisecond timestamp.
abstract class TaskDataSource {
  Future<Either<Failure, List<TaskEntity>>> getAllTasks();
  Future<Either<Failure, TaskEntity>> createTask({
    required String title,
    required String category,
    required String dueDate,
    String? workLocation,
  });
  Future<Either<Failure, TaskEntity>> updateTask({
    required int id,
    String? title,
    String? dueDate,
    String? workLocation,
    bool? completed,
  });
  Future<Either<Failure, bool>> deleteTask(int id);
  Future<Either<Failure, void>> clearAllTasks();
}

class TaskDataSourceImpl implements TaskDataSource {
  final String userId;
  final FirebaseFirestore _db;

  TaskDataSourceImpl({required this.userId, FirebaseFirestore? firestore})
      : _db = firestore ?? FirebaseFirestore.instance;

  CollectionReference<Map<String, dynamic>> get _collection =>
      _db.collection('users').doc(userId).collection('tasks');

  DocumentReference<Map<String, dynamic>> _document(String id) =>
      _collection.doc(id);

  int _generateId() => DateTime.now().millisecondsSinceEpoch;

  TaskEntity _fromDoc(String docId, Map<String, dynamic> data) {
    return TaskEntity(
      id: int.parse(docId),
      title: data['title'] as String? ?? '',
      category: data['category'] as String? ?? 'Personal',
      dueDate: data['dueDate'] as String? ??
          DateTime.now().toIso8601String().split('T').first,
      completed: data['completed'] as bool? ?? false,
      workLocation: data['workLocation'] as String?,
    );
  }

  @override
  Future<Either<Failure, List<TaskEntity>>> getAllTasks() async {
    try {
      final snapshot = await _collection.get();
      final tasks =
          snapshot.docs.map((doc) => _fromDoc(doc.id, doc.data())).toList();
      return Right(tasks);
    } catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> createTask({
    required String title,
    required String category,
    required String dueDate,
    String? workLocation,
  }) async {
    try {
      final id = _generateId();
      await _document(id.toString()).set({
        'title': title,
        'category': category,
        'dueDate': dueDate,
        'completed': false,
        'workLocation': workLocation,
        'createdAt': DateTime.now().toIso8601String(),
      });
      return Right(TaskEntity(
        id: id,
        title: title,
        category: category,
        dueDate: dueDate,
        completed: false,
        workLocation: workLocation,
      ));
    } catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, TaskEntity>> updateTask({
    required int id,
    String? title,
    String? dueDate,
    String? workLocation,
    bool? completed,
  }) async {
    try {
      final updates = <String, dynamic>{};
      if (title != null) updates['title'] = title;
      if (dueDate != null) updates['dueDate'] = dueDate;
      if (workLocation != null) updates['workLocation'] = workLocation;
      if (completed != null) updates['completed'] = completed;

      final docRef = _document(id.toString());
      await docRef.update(updates);

      final snapshot = await docRef.get();
      if (!snapshot.exists) {
        return Left(ErrorMessage(message: 'Task not found: $id'));
      }
      return Right(_fromDoc(snapshot.id, snapshot.data()!));
    } catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> deleteTask(int id) async {
    try {
      await _document(id.toString()).delete();
      return const Right(true);
    } catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> clearAllTasks() async {
    try {
      final snapshot = await _collection.get();
      final batch = _db.batch();
      for (final doc in snapshot.docs) {
        batch.delete(doc.reference);
      }
      await batch.commit();
      return const Right(null);
    } catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }
}
