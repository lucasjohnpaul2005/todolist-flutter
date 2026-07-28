import 'package:dartz/dartz.dart';
import '../../core/failure.dart';
import '../../domain/entities/task_entity.dart';
import '../../domain/repositories/task_repository.dart';
import '../datasource/task_datasource.dart';

class TaskRepositoryImpl extends TaskRepository {
  TaskRepositoryImpl(this._dataSource);

  final TaskDataSource _dataSource;

  @override
  Future<Either<Failure, List<TaskEntity>>> getAllTasks() {
    return _dataSource.getAllTasks();
  }

  @override
  Future<Either<Failure, TaskEntity>> createTask({
    required String title,
    required String category,
    required String dueDate,
    String? workLocation,
  }) {
    return _dataSource.createTask(
      title: title,
      category: category,
      dueDate: dueDate,
      workLocation: workLocation,
    );
  }

  @override
  Future<Either<Failure, TaskEntity>> updateTask({
    required int id,
    String? title,
    String? dueDate,
    String? workLocation,
    bool? completed,
  }) {
    return _dataSource.updateTask(
      id: id,
      title: title,
      dueDate: dueDate,
      workLocation: workLocation,
      completed: completed,
    );
  }

  @override
  Future<Either<Failure, bool>> deleteTask(int id) {
    return _dataSource.deleteTask(id);
  }

  @override
  Future<Either<Failure, void>> clearAllTasks() {
    return _dataSource.clearAllTasks();
  }
}
