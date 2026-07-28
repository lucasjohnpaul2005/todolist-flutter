import 'package:dartz/dartz.dart';
import '../../../core/failure.dart';
import '../../entities/task_entity.dart';
import '../../repositories/task_repository.dart';

class UpdateTaskUseCase {
  UpdateTaskUseCase(this._repository);

  final TaskRepository _repository;

  Future<Either<Failure, TaskEntity>> updateTask({
    required int id,
    String? title,
    String? dueDate,
    String? workLocation,
    bool? completed,
  }) async {
    try {
      return _repository.updateTask(
        id: id,
        title: title,
        dueDate: dueDate,
        workLocation: workLocation,
        completed: completed,
      );
    } on Exception catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }
}
