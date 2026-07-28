import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/injection_container.dart';
import '../../../../../domain/usecases/todo/update_task_usecase.dart';
import '../task_bloc.dart';

extension TaskOnToggleComplete on TaskBloc {
  Future<void> onToggleComplete(
      TaskEvent event, Emitter<TaskState> emit) async {
    final id = event.maybeWhen(
      toggleComplete: (id) => id,
      orElse: () => null,
    );
    if (id == null) return;

    final index = state.tasks.indexWhere((t) => t.id == id);
    if (index == -1) return;

    final newCompleted = !state.tasks[index].completed;

    // Optimistic update, same as the web app's handleToggleComplete.
    emit(state.copyWith(tasks: [
      for (final t in state.tasks)
        if (t.id == id) t.copyWith(completed: newCompleted) else t,
    ]));

    final useCase = serviceLocator<UpdateTaskUseCase>(param1: repository);
    final result = await useCase.updateTask(id: id, completed: newCompleted);

    result.fold(
      (failure) {
        // Revert on failure.
        emit(state.copyWith(
          status: TaskStatus.error,
          errorMessage: failure.message?.toString(),
          tasks: [
            for (final t in state.tasks)
              if (t.id == id) t.copyWith(completed: !newCompleted) else t,
          ],
        ));
      },
      (_) {},
    );
  }
}
