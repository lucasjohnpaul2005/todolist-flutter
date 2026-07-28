import 'package:dartz/dartz.dart';
import '../../core/failure.dart';
import '../entities/task_entity.dart';

/// Mirrors domain/repositories/TaskRepository.ts, but returns
/// Either<Failure, T> per this project's Clean Architecture convention
/// (see domain/repositories/test_repository.dart in the template).
abstract class TaskRepository {
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
