import 'package:dartz/dartz.dart';
import '../../../core/failure.dart';
import '../../repositories/task_repository.dart';

class DeleteTaskUseCase {
  DeleteTaskUseCase(this._repository);

  final TaskRepository _repository;

  /// [isCompanyTask] mirrors the web app's guard in handleDeleteTodo:
  /// tasks with workLocation === 'Work from Company' cannot be deleted.
  Future<Either<Failure, bool>> deleteTask(
    int id, {
    required bool isCompanyTask,
  }) async {
    try {
      if (isCompanyTask) {
        throw Exception('Company tasks cannot be deleted.');
      }
      return _repository.deleteTask(id);
    } on Exception catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }
}
