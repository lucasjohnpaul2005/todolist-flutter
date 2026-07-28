import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/injection_container.dart';
import '../../../../../domain/usecases/todo/clear_all_tasks_usecase.dart';
import '../task_bloc.dart';

extension TaskOnClearAllTasks on TaskBloc {
  Future<void> onClearAllTasks(
      TaskEvent event, Emitter<TaskState> emit) async {
    final useCase =
        serviceLocator<ClearAllTasksUseCase>(param1: repository);

    final result = await useCase.clearAllTasks(
      hasCompanyTasks: state.hasCompanyTasks,
    );

    result.fold(
      (failure) => emit(state.copyWith(
        status: TaskStatus.error,
        errorMessage: failure.message?.toString(),
      )),
      (_) => emit(state.copyWith(
        status: TaskStatus.success,
        errorMessage: null,
        tasks: [],
      )),
    );
  }
}
