import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../data/datasource/task_datasource.dart';
import '../../../../data/repositories/task_repository_impl.dart';
import '../../../../domain/entities/task_entity.dart';
import '../../../../domain/repositories/task_repository.dart';
import 'handlers/task_on_change_tab.dart';
import 'handlers/task_on_clear_all_tasks.dart';
import 'handlers/task_on_create_task.dart';
import 'handlers/task_on_delete_task.dart';
import 'handlers/task_on_read_tasks.dart';
import 'handlers/task_on_started.dart';
import 'handlers/task_on_toggle_complete.dart';
import 'handlers/task_on_update_task.dart';

part 'task_event.dart';
part 'task_state.dart';
part 'task_bloc.freezed.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  /// Firestore path is scoped per-user (users/{userId}/tasks), so the
  /// repository is built here rather than pulled from GetIt as a singleton
  /// — see the note in core/injection_container.dart.
  final String userId;
  late final TaskRepository repository;

  TaskBloc({required this.userId}) : super(const _TaskState()) {
    repository = TaskRepositoryImpl(TaskDataSourceImpl(userId: userId));

    on<_Started>(onStarted);
    on<_ReadTasks>(onReadTasks);
    on<_CreateTask>(onCreateTask);
    on<_UpdateTask>(onUpdateTask);
    on<_ToggleComplete>(onToggleComplete);
    on<_DeleteTask>(onDeleteTask);
    on<_ClearAllTasks>(onClearAllTasks);
    on<_ChangeTab>(onChangeTab);

    add(const TaskEvent.started());
  }
}
