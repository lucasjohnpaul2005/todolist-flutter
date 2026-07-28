import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/injection_container.dart';
import '../../../../../domain/usecases/todo/get_all_tasks_usecase.dart';
import '../task_bloc.dart';

extension TaskOnReadTasks on TaskBloc {
  Future<void> onReadTasks(TaskEvent event, Emitter<TaskState> emit) async {
    final useCase =
        serviceLocator<GetAllTasksUseCase>(param1: repository);

    emit(state.copyWith(isLoading: true, status: null, errorMessage: null));

    final result = await useCase.getAllTasks();

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        status: TaskStatus.error,
        errorMessage: failure.message?.toString(),
      )),
      (tasks) => emit(state.copyWith(
        isLoading: false,
        status: TaskStatus.success,
        tasks: tasks,
        errorMessage: null,
      )),
    );
  }
}
