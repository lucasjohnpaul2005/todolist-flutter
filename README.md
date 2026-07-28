# TodoList — Flutter (BLoC + Clean Architecture)

Built against your mentor's `FlutterBlocCleanArchiTemplate` conventions:
flutter_bloc, freezed events/states, get_it for DI, auto_route for
navigation, dartz `Either<Failure, T>` for error handling. Same Firebase
backend as your web app — same Firestore paths, same field names, same
Auth users.

## ⚠️ Required first step: generate code

This architecture relies on **code generation** (freezed + auto_route) for:

- `lib/app/pages/todo/bloc/task_bloc.freezed.dart` — generated from
  `task_event.dart` / `task_state.dart`
- `lib/core/autoroutes/routes.gr.dart` — generated from the `@RoutePage()`
  annotations on `AuthPage` and `TodoPage`

**Neither of these generated files is included in this project** — the same
way they wouldn't exist yet in a fresh clone of your mentor's template
before its first build. The project will not compile until you generate
them:

```
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

Re-run that command any time you add/change a bloc event, state field, or
`@RoutePage()`.

## Connect to your existing Firebase project

```
dart pub global activate flutterfire_cli
flutterfire configure
```

Select project **`todolist-crud-a063e`** (confirmed from your web app's
`firebase/config.ts`) and the Android/iOS platforms you're targeting. This
regenerates `lib/firebase_options.dart` with real values — it's currently a
placeholder that throws on purpose so a misconfigured build fails loudly
instead of silently.

## Run it

```
flutter run
```

## Architecture map (web → Flutter)

| Web (React)                        | Flutter                                              |
|-------------------------------------|-------------------------------------------------------|
| `Task.ts`                           | `domain/entities/task_entity.dart`                    |
| `TaskRepository.ts` (interface)     | `domain/repositories/task_repository.dart`             |
| `TaskService.ts` (orchestration)    | `domain/usecases/todo/*.dart`                          |
| `FirebaseTaskRepository.ts`         | `data/datasource/task_datasource.dart` (same Firestore paths/fields) |
| —                                    | `data/repositories/task_repository_impl.dart` (delegates to datasource, per Clean Architecture) |
| Redux task slice + actions          | `app/pages/todo/bloc/task_bloc.dart` + `task_event.dart` + `task_state.dart` |
| `App.tsx` (onAuthStateChanged)      | `main.dart` (`authStateChanges().listen(...)`) + `core/autoroutes/authguard.dart` |
| `Auth.tsx`                          | `app/pages/auth/auth_page.dart` + `cubit/auth_cubit.dart` |
| `TodoPage.tsx`                      | `app/pages/todo/todo_page.dart`                        |
| `TodoList.tsx` + task card          | `widgets/todo_list.dart` + `widgets/task_card.dart`     |
| Add-task form                       | `widgets/add_task_sheet.dart` (bottom sheet)            |
| `EditModal.tsx`                     | `widgets/edit_task_sheet.dart` (bottom sheet)           |
| Settings panel                      | `widgets/settings_panel.dart`                           |
| `app.css` design tokens             | `theme/app_theme.dart`                                  |

### Why Auth uses `Cubit` instead of `Bloc` + freezed

Your mentor's template's example feature (`DashboardBloc`) uses full
`Bloc` + freezed event unions. The Todo feature — the actual assignment —
follows that pattern exactly (`TaskBloc`/`TaskEvent`/`TaskState`). Auth is
supplementary scaffolding the template doesn't cover, so it uses the
lighter-weight `Cubit` (still `flutter_bloc`, just without an event union)
to avoid extra generated-code surface area for something outside the
graded feature. Say the word if you'd rather I bring Auth in line with
full `Bloc` + freezed too, for consistency.

### Why `injection_container.dart` differs slightly from the template

The template's `TestRepository` is stateless, so it's registered once at
startup: `registerFactory(() => GetSomeTextUseCase(serviceLocator<TestRepository>()))`.

`TaskRepository` is scoped to the signed-in user (Firestore path
`users/{userId}/tasks`), so it can't be a static singleton the same way.
Instead, `TaskBloc` builds the repository once it knows the user's `uid`,
and the use cases are registered with `registerFactoryParam`, taking that
repository as a runtime argument. See the comment at the top of
`core/injection_container.dart` for the full explanation.

## Not yet ported

- Repository switcher (localStorage/in-memory) from Settings — Firebase
  only, per your earlier setup decision.
- Real app icon / splash screen.

## A note on verification

I don't have the Flutter/Dart SDK in the environment I built this in, so I
couldn't run `build_runner` or `flutter analyze` myself to confirm this
compiles clean. I checked every file by hand against your mentor's actual
generated output (`dashboard_bloc.freezed.dart`, `routes.gr.dart`) to match
the exact patterns, but please run `flutter analyze` after the build_runner
step and send me anything it flags — freezed's `maybeWhen` callback
signatures in particular are easy to get subtly wrong by hand.
