import 'package:dartz/dartz.dart';
import '../../../core/failure.dart';
import '../../entities/task_entity.dart';
import '../../repositories/task_repository.dart';

class GetAllTasksUseCase {
  GetAllTasksUseCase(this._repository);

  final TaskRepository _repository;

  Future<Either<Failure, List<TaskEntity>>> getAllTasks() async {
    try {
      return _repository.getAllTasks();
    } on Exception catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }
}
