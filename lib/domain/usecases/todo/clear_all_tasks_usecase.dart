import 'package:dartz/dartz.dart';
import '../../../core/failure.dart';
import '../../repositories/task_repository.dart';

class ClearAllTasksUseCase {
  ClearAllTasksUseCase(this._repository);

  final TaskRepository _repository;

  /// [hasCompanyTasks] mirrors the web app's guard in handleClearAll:
  /// if ANY task is a Company task, the whole clear is blocked.
  Future<Either<Failure, void>> clearAllTasks({
    required bool hasCompanyTasks,
  }) async {
    try {
      if (hasCompanyTasks) {
        throw Exception(
            'Cannot delete all tasks — Company tasks cannot be deleted.');
      }
      return _repository.clearAllTasks();
    } on Exception catch (e)   {
      return Left(ErrorMessage(message: e.toString()));
    }
  }
}
