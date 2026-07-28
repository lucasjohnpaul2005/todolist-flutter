import 'package:get_it/get_it.dart';
import '../domain/repositories/task_repository.dart';
import '../domain/usecases/todo/clear_all_tasks_usecase.dart';
import '../domain/usecases/todo/create_task_usecase.dart';
import '../domain/usecases/todo/delete_task_usecase.dart';
import '../domain/usecases/todo/get_all_tasks_usecase.dart';
import '../domain/usecases/todo/update_task_usecase.dart';

final serviceLocator = GetIt.instance;

/// NOTE ON THIS FILE vs. the template's injection_container.dart:
///
/// The template's TestRepository is stateless, so it's registered once as a
/// plain factory: `registerFactory(() => GetSomeTextUseCase(serviceLocator<TestRepository>()))`.
///
/// TaskRepository is scoped to the signed-in user (it needs a Firestore path
/// under users/{userId}), so it can't be registered once at app startup the
/// same way. Instead, the use cases below are registered with
/// registerFactoryParam, taking the already-constructed TaskRepository as a
/// runtime parameter. TaskBloc builds that repository once it knows the
/// user's uid and passes it in — see TaskBloc's constructor.
Future<void> init() async {
  serviceLocator.registerFactoryParam<GetAllTasksUseCase, TaskRepository, void>(
    (repository, _) => GetAllTasksUseCase(repository),
  );
  serviceLocator.registerFactoryParam<CreateTaskUseCase, TaskRepository, void>(
    (repository, _) => CreateTaskUseCase(repository),
  );
  serviceLocator.registerFactoryParam<UpdateTaskUseCase, TaskRepository, void>(
    (repository, _) => UpdateTaskUseCase(repository),
  );
  serviceLocator.registerFactoryParam<DeleteTaskUseCase, TaskRepository, void>(
    (repository, _) => DeleteTaskUseCase(repository),
  );
  serviceLocator
      .registerFactoryParam<ClearAllTasksUseCase, TaskRepository, void>(
    (repository, _) => ClearAllTasksUseCase(repository),
  );
}
