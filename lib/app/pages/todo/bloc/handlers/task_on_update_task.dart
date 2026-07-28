import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/injection_container.dart';
import '../../../../../domain/usecases/todo/update_task_usecase.dart';
import '../task_bloc.dart';

extension TaskOnUpdateTask on TaskBloc {
  Future<void> onUpdateTask(TaskEvent event, Emitter<TaskState> emit) async {
    final fields = event.maybeWhen(
      updateTask: (id, title, dueDate, workLocation, completed) => (
        id: id,
        title: title,
        dueDate: dueDate,
        workLocation: workLocation,
        completed: completed,
      ),
      orElse: () => null,
    );
    if (fields == null) return;

    final useCase = serviceLocator<UpdateTaskUseCase>(param1: repository);

    final result = await useCase.updateTask(
      id: fields.id,
      title: fields.title,
      dueDate: fields.dueDate,
      workLocation: fields.workLocation,
      completed: fields.completed,
    );

    result.fold(
      (failure) => emit(state.copyWith(
        status: TaskStatus.error,
        errorMessage: failure.message?.toString(),
      )),
      (updated) => emit(state.copyWith(
        status: TaskStatus.success,
        errorMessage: null,
        tasks: [
          for (final t in state.tasks) if (t.id == updated.id) updated else t,
        ],
      )),
    );
  }
}
