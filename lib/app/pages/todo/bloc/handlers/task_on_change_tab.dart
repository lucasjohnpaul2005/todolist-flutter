import 'package:flutter_bloc/flutter_bloc.dart';
import '../task_bloc.dart';

extension TaskOnChangeTab on TaskBloc {
  Future<void> onChangeTab(TaskEvent event, Emitter<TaskState> emit) async {
    final tab = event.maybeWhen(
      changeTab: (tab) => tab,
      orElse: () => null,
    );
    if (tab == null) return;
    emit(state.copyWith(activeTab: tab));
  }
}
