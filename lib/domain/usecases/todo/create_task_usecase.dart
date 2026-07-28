import 'package:dartz/dartz.dart';
import '../../../core/failure.dart';
import '../../entities/task_entity.dart';
import '../../repositories/task_repository.dart';

class CreateTaskUseCase {
  CreateTaskUseCase(this._repository);

  final TaskRepository _repository;

  Future<Either<Failure, TaskEntity>> createTask({
    required String title,
    required String category,
    required String dueDate,
    String? workLocation,
  }) async {
    try {
      if (title.trim().isEmpty) {
        throw Exception('Task title cannot be empty');
      }
      return _repository.createTask(
        title: title.trim(),
        category: category,
        dueDate: dueDate,
        workLocation: category == 'Work' ? workLocation : null,
      );
    } on Exception catch (e) {
      return Left(ErrorMessage(message: e.toString()));
    }
  }
}
