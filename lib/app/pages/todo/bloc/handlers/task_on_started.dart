import 'package:flutter_bloc/flutter_bloc.dart';
import '../task_bloc.dart';

extension TaskOnStarted on TaskBloc {
  Future<void> onStarted(TaskEvent event, Emitter<TaskState> emit) async {
    add(const TaskEvent.readTasks());
  }
}
