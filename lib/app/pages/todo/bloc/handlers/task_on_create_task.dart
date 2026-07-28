import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/injection_container.dart';
import '../../../../../domain/usecases/todo/create_task_usecase.dart';
import '../task_bloc.dart';

extension TaskOnCreateTask on TaskBloc {
  Future<void> onCreateTask(TaskEvent event, Emitter<TaskState> emit) async {
    final fields = event.maybeWhen(
      createTask: (title, category, dueDate, workLocation) =>
          (title: title, category: category, dueDate: dueDate, workLocation: workLocation),
      orElse: () => null,
    );
    if (fields == null) return;

    final useCase = serviceLocator<CreateTaskUseCase>(param1: repository);

    emit(state.copyWith(isLoading: true, status: null, errorMessage: null));

    final result = await useCase.createTask(
      title: fields.title,
      category: fields.category,
      dueDate: fields.dueDate,
      workLocation: fields.workLocation,
    );

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        status: TaskStatus.error,
        errorMessage: failure.message?.toString(),
      )),
      (task) => emit(state.copyWith(
        isLoading: false,
        status: TaskStatus.success,
        tasks: [...state.tasks, task],
        errorMessage: null,
      )),
    );
  }
}
