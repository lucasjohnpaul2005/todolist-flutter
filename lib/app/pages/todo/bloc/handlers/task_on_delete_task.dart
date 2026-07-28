import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/injection_container.dart';
import '../../../../../domain/entities/task_entity.dart';
import '../../../../../domain/usecases/todo/delete_task_usecase.dart';
import '../task_bloc.dart';

extension TaskOnDeleteTask on TaskBloc {
  Future<void> onDeleteTask(TaskEvent event, Emitter<TaskState> emit) async {
    final id = event.maybeWhen(
      deleteTask: (id) => id,
      orElse: () => null,
    );
    if (id == null) return;

    TaskEntity? task;
    for (final t in state.tasks) {
      if (t.id == id) {
        task = t;
        break;
      }
    }
    if (task == null) return;

    final useCase = serviceLocator<DeleteTaskUseCase>(param1: repository);
    final result = await useCase.deleteTask(
      id,
      isCompanyTask: task.workLocation == 'Work from Company',
    );

    result.fold(
      (failure) => emit(state.copyWith(
        status: TaskStatus.error,
        errorMessage: failure.message?.toString(),
      )),
      (_) => emit(state.copyWith(
        status: TaskStatus.success,
        errorMessage: null,
        tasks: state.tasks.where((t) => t.id != id).toList(),
      )),
    );
  }
}
