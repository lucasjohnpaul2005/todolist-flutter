part of 'task_bloc.dart';

@freezed
class TaskEvent with _$TaskEvent {
  const factory TaskEvent.started() = _Started;

  const factory TaskEvent.readTasks() = _ReadTasks;

  const factory TaskEvent.createTask({
    required String title,
    required String category,
    required String dueDate,
    String? workLocation,
  }) = _CreateTask;

  const factory TaskEvent.updateTask({
    required int id,
    String? title,
    String? dueDate,
    String? workLocation,
    bool? completed,
  }) = _UpdateTask;

  const factory TaskEvent.toggleComplete({
    required int id,
  }) = _ToggleComplete;

  const factory TaskEvent.deleteTask({
    required int id,
  }) = _DeleteTask;

  const factory TaskEvent.clearAllTasks() = _ClearAllTasks;

  const factory TaskEvent.changeTab({
    required TaskTab tab,
  }) = _ChangeTab;
}
