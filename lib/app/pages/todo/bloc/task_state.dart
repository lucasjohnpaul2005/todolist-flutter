part of 'task_bloc.dart';

enum TaskTab { work, personal, completed, settings }

enum TaskStatus { success, error }

@freezed
class TaskState with _$TaskState {
  const factory TaskState({
    @Default([]) List<TaskEntity> tasks,
    @Default(TaskTab.work) TaskTab activeTab,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
    @Default(null) TaskStatus? status,
  }) = _TaskState;
}

/// Derived selectors — kept alongside the state class rather than
/// recomputed in every widget, mirroring the selector-style getters in the
/// web app's TodoPage.tsx (getFilteredTodos, getCategoryCount, etc).
extension TaskStateSelectors on TaskState {
  List<TaskEntity> get filteredTasks {
    switch (activeTab) {
      case TaskTab.work:
        return tasks.where((t) => t.category == 'Work' && !t.completed).toList();
      case TaskTab.personal:
        return tasks
            .where((t) => t.category == 'Personal' && !t.completed)
            .toList();
      case TaskTab.completed:
        return tasks.where((t) => t.completed).toList();
      case TaskTab.settings:
        return const [];
    }
  }

  int categoryCount(String category) =>
      tasks.where((t) => t.category == category && !t.completed).length;

  int get completedCount => tasks.where((t) => t.completed).length;
  int get pendingCount => tasks.where((t) => !t.completed).length;
  int get progressPercent =>
      tasks.isEmpty ? 0 : ((completedCount / tasks.length) * 100).round();
  bool get hasCompanyTasks =>
      tasks.any((t) => t.workLocation == 'Work from Company');
}
