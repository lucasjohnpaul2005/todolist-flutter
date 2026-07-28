// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readTasks,
    required TResult Function(
            String title, String category, String dueDate, String? workLocation)
        createTask,
    required TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)
        updateTask,
    required TResult Function(int id) toggleComplete,
    required TResult Function(int id) deleteTask,
    required TResult Function() clearAllTasks,
    required TResult Function(TaskTab tab) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? readTasks,
    TResult? Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult? Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult? Function(int id)? toggleComplete,
    TResult? Function(int id)? deleteTask,
    TResult? Function()? clearAllTasks,
    TResult? Function(TaskTab tab)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readTasks,
    TResult Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult Function(int id)? toggleComplete,
    TResult Function(int id)? deleteTask,
    TResult Function()? clearAllTasks,
    TResult Function(TaskTab tab)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadTasks value) readTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ToggleComplete value) toggleComplete,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ClearAllTasks value) clearAllTasks,
    required TResult Function(_ChangeTab value) changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReadTasks value)? readTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ToggleComplete value)? toggleComplete,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ClearAllTasks value)? clearAllTasks,
    TResult? Function(_ChangeTab value)? changeTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadTasks value)? readTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ToggleComplete value)? toggleComplete,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ClearAllTasks value)? clearAllTasks,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEventCopyWith<$Res> {
  factory $TaskEventCopyWith(TaskEvent value, $Res Function(TaskEvent) then) =
      _$TaskEventCopyWithImpl<$Res, TaskEvent>;
}

/// @nodoc
class _$TaskEventCopyWithImpl<$Res, $Val extends TaskEvent>
    implements $TaskEventCopyWith<$Res> {
  _$TaskEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TaskEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readTasks,
    required TResult Function(
            String title, String category, String dueDate, String? workLocation)
        createTask,
    required TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)
        updateTask,
    required TResult Function(int id) toggleComplete,
    required TResult Function(int id) deleteTask,
    required TResult Function() clearAllTasks,
    required TResult Function(TaskTab tab) changeTab,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? readTasks,
    TResult? Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult? Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult? Function(int id)? toggleComplete,
    TResult? Function(int id)? deleteTask,
    TResult? Function()? clearAllTasks,
    TResult? Function(TaskTab tab)? changeTab,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readTasks,
    TResult Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult Function(int id)? toggleComplete,
    TResult Function(int id)? deleteTask,
    TResult Function()? clearAllTasks,
    TResult Function(TaskTab tab)? changeTab,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadTasks value) readTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ToggleComplete value) toggleComplete,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ClearAllTasks value) clearAllTasks,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReadTasks value)? readTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ToggleComplete value)? toggleComplete,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ClearAllTasks value)? clearAllTasks,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadTasks value)? readTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ToggleComplete value)? toggleComplete,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ClearAllTasks value)? clearAllTasks,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TaskEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ReadTasksImplCopyWith<$Res> {
  factory _$$ReadTasksImplCopyWith(
          _$ReadTasksImpl value, $Res Function(_$ReadTasksImpl) then) =
      __$$ReadTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReadTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ReadTasksImpl>
    implements _$$ReadTasksImplCopyWith<$Res> {
  __$$ReadTasksImplCopyWithImpl(
      _$ReadTasksImpl _value, $Res Function(_$ReadTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ReadTasksImpl implements _ReadTasks {
  const _$ReadTasksImpl();

  @override
  String toString() {
    return 'TaskEvent.readTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ReadTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readTasks,
    required TResult Function(
            String title, String category, String dueDate, String? workLocation)
        createTask,
    required TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)
        updateTask,
    required TResult Function(int id) toggleComplete,
    required TResult Function(int id) deleteTask,
    required TResult Function() clearAllTasks,
    required TResult Function(TaskTab tab) changeTab,
  }) {
    return readTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? readTasks,
    TResult? Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult? Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult? Function(int id)? toggleComplete,
    TResult? Function(int id)? deleteTask,
    TResult? Function()? clearAllTasks,
    TResult? Function(TaskTab tab)? changeTab,
  }) {
    return readTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readTasks,
    TResult Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult Function(int id)? toggleComplete,
    TResult Function(int id)? deleteTask,
    TResult Function()? clearAllTasks,
    TResult Function(TaskTab tab)? changeTab,
    required TResult orElse(),
  }) {
    if (readTasks != null) {
      return readTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadTasks value) readTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ToggleComplete value) toggleComplete,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ClearAllTasks value) clearAllTasks,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return readTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReadTasks value)? readTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ToggleComplete value)? toggleComplete,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ClearAllTasks value)? clearAllTasks,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return readTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadTasks value)? readTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ToggleComplete value)? toggleComplete,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ClearAllTasks value)? clearAllTasks,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (readTasks != null) {
      return readTasks(this);
    }
    return orElse();
  }
}

abstract class _ReadTasks implements TaskEvent {
  const factory _ReadTasks() = _$ReadTasksImpl;
}

/// @nodoc
abstract class _$$CreateTaskImplCopyWith<$Res> {
  factory _$$CreateTaskImplCopyWith(
          _$CreateTaskImpl value, $Res Function(_$CreateTaskImpl) then) =
      __$$CreateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String title, String category, String dueDate, String? workLocation});
}

/// @nodoc
class __$$CreateTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$CreateTaskImpl>
    implements _$$CreateTaskImplCopyWith<$Res> {
  __$$CreateTaskImplCopyWithImpl(
      _$CreateTaskImpl _value, $Res Function(_$CreateTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? category = null,
    Object? dueDate = null,
    Object? workLocation = freezed,
  }) {
    return _then(_$CreateTaskImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      dueDate: null == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String,
      workLocation: freezed == workLocation
          ? _value.workLocation
          : workLocation // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreateTaskImpl implements _CreateTask {
  const _$CreateTaskImpl(
      {required this.title,
      required this.category,
      required this.dueDate,
      this.workLocation});

  @override
  final String title;
  @override
  final String category;
  @override
  final String dueDate;
  @override
  final String? workLocation;

  @override
  String toString() {
    return 'TaskEvent.createTask(title: $title, category: $category, dueDate: $dueDate, workLocation: $workLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.workLocation, workLocation) ||
                other.workLocation == workLocation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, category, dueDate, workLocation);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskImplCopyWith<_$CreateTaskImpl> get copyWith =>
      __$$CreateTaskImplCopyWithImpl<_$CreateTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readTasks,
    required TResult Function(
            String title, String category, String dueDate, String? workLocation)
        createTask,
    required TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)
        updateTask,
    required TResult Function(int id) toggleComplete,
    required TResult Function(int id) deleteTask,
    required TResult Function() clearAllTasks,
    required TResult Function(TaskTab tab) changeTab,
  }) {
    return createTask(title, category, dueDate, workLocation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? readTasks,
    TResult? Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult? Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult? Function(int id)? toggleComplete,
    TResult? Function(int id)? deleteTask,
    TResult? Function()? clearAllTasks,
    TResult? Function(TaskTab tab)? changeTab,
  }) {
    return createTask?.call(title, category, dueDate, workLocation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readTasks,
    TResult Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult Function(int id)? toggleComplete,
    TResult Function(int id)? deleteTask,
    TResult Function()? clearAllTasks,
    TResult Function(TaskTab tab)? changeTab,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(title, category, dueDate, workLocation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadTasks value) readTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ToggleComplete value) toggleComplete,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ClearAllTasks value) clearAllTasks,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return createTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReadTasks value)? readTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ToggleComplete value)? toggleComplete,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ClearAllTasks value)? clearAllTasks,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return createTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadTasks value)? readTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ToggleComplete value)? toggleComplete,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ClearAllTasks value)? clearAllTasks,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (createTask != null) {
      return createTask(this);
    }
    return orElse();
  }
}

abstract class _CreateTask implements TaskEvent {
  const factory _CreateTask(
      {required final String title,
      required final String category,
      required final String dueDate,
      final String? workLocation}) = _$CreateTaskImpl;

  String get title;
  String get category;
  String get dueDate;
  String? get workLocation;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateTaskImplCopyWith<_$CreateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskImplCopyWith<$Res> {
  factory _$$UpdateTaskImplCopyWith(
          _$UpdateTaskImpl value, $Res Function(_$UpdateTaskImpl) then) =
      __$$UpdateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? dueDate,
      String? workLocation,
      bool? completed});
}

/// @nodoc
class __$$UpdateTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$UpdateTaskImpl>
    implements _$$UpdateTaskImplCopyWith<$Res> {
  __$$UpdateTaskImplCopyWithImpl(
      _$UpdateTaskImpl _value, $Res Function(_$UpdateTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? dueDate = freezed,
    Object? workLocation = freezed,
    Object? completed = freezed,
  }) {
    return _then(_$UpdateTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      dueDate: freezed == dueDate
          ? _value.dueDate
          : dueDate // ignore: cast_nullable_to_non_nullable
              as String?,
      workLocation: freezed == workLocation
          ? _value.workLocation
          : workLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: freezed == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$UpdateTaskImpl implements _UpdateTask {
  const _$UpdateTaskImpl(
      {required this.id,
      this.title,
      this.dueDate,
      this.workLocation,
      this.completed});

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? dueDate;
  @override
  final String? workLocation;
  @override
  final bool? completed;

  @override
  String toString() {
    return 'TaskEvent.updateTask(id: $id, title: $title, dueDate: $dueDate, workLocation: $workLocation, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.dueDate, dueDate) || other.dueDate == dueDate) &&
            (identical(other.workLocation, workLocation) ||
                other.workLocation == workLocation) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, dueDate, workLocation, completed);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      __$$UpdateTaskImplCopyWithImpl<_$UpdateTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readTasks,
    required TResult Function(
            String title, String category, String dueDate, String? workLocation)
        createTask,
    required TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)
        updateTask,
    required TResult Function(int id) toggleComplete,
    required TResult Function(int id) deleteTask,
    required TResult Function() clearAllTasks,
    required TResult Function(TaskTab tab) changeTab,
  }) {
    return updateTask(id, title, dueDate, workLocation, completed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? readTasks,
    TResult? Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult? Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult? Function(int id)? toggleComplete,
    TResult? Function(int id)? deleteTask,
    TResult? Function()? clearAllTasks,
    TResult? Function(TaskTab tab)? changeTab,
  }) {
    return updateTask?.call(id, title, dueDate, workLocation, completed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readTasks,
    TResult Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult Function(int id)? toggleComplete,
    TResult Function(int id)? deleteTask,
    TResult Function()? clearAllTasks,
    TResult Function(TaskTab tab)? changeTab,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(id, title, dueDate, workLocation, completed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadTasks value) readTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ToggleComplete value) toggleComplete,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ClearAllTasks value) clearAllTasks,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReadTasks value)? readTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ToggleComplete value)? toggleComplete,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ClearAllTasks value)? clearAllTasks,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadTasks value)? readTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ToggleComplete value)? toggleComplete,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ClearAllTasks value)? clearAllTasks,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class _UpdateTask implements TaskEvent {
  const factory _UpdateTask(
      {required final int id,
      final String? title,
      final String? dueDate,
      final String? workLocation,
      final bool? completed}) = _$UpdateTaskImpl;

  int get id;
  String? get title;
  String? get dueDate;
  String? get workLocation;
  bool? get completed;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleCompleteImplCopyWith<$Res> {
  factory _$$ToggleCompleteImplCopyWith(_$ToggleCompleteImpl value,
          $Res Function(_$ToggleCompleteImpl) then) =
      __$$ToggleCompleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ToggleCompleteImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ToggleCompleteImpl>
    implements _$$ToggleCompleteImplCopyWith<$Res> {
  __$$ToggleCompleteImplCopyWithImpl(
      _$ToggleCompleteImpl _value, $Res Function(_$ToggleCompleteImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ToggleCompleteImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ToggleCompleteImpl implements _ToggleComplete {
  const _$ToggleCompleteImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TaskEvent.toggleComplete(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ToggleCompleteImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ToggleCompleteImplCopyWith<_$ToggleCompleteImpl> get copyWith =>
      __$$ToggleCompleteImplCopyWithImpl<_$ToggleCompleteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readTasks,
    required TResult Function(
            String title, String category, String dueDate, String? workLocation)
        createTask,
    required TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)
        updateTask,
    required TResult Function(int id) toggleComplete,
    required TResult Function(int id) deleteTask,
    required TResult Function() clearAllTasks,
    required TResult Function(TaskTab tab) changeTab,
  }) {
    return toggleComplete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? readTasks,
    TResult? Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult? Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult? Function(int id)? toggleComplete,
    TResult? Function(int id)? deleteTask,
    TResult? Function()? clearAllTasks,
    TResult? Function(TaskTab tab)? changeTab,
  }) {
    return toggleComplete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readTasks,
    TResult Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult Function(int id)? toggleComplete,
    TResult Function(int id)? deleteTask,
    TResult Function()? clearAllTasks,
    TResult Function(TaskTab tab)? changeTab,
    required TResult orElse(),
  }) {
    if (toggleComplete != null) {
      return toggleComplete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadTasks value) readTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ToggleComplete value) toggleComplete,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ClearAllTasks value) clearAllTasks,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return toggleComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReadTasks value)? readTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ToggleComplete value)? toggleComplete,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ClearAllTasks value)? clearAllTasks,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return toggleComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadTasks value)? readTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ToggleComplete value)? toggleComplete,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ClearAllTasks value)? clearAllTasks,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (toggleComplete != null) {
      return toggleComplete(this);
    }
    return orElse();
  }
}

abstract class _ToggleComplete implements TaskEvent {
  const factory _ToggleComplete({required final int id}) = _$ToggleCompleteImpl;

  int get id;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ToggleCompleteImplCopyWith<_$ToggleCompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTaskImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteTaskImpl implements _DeleteTask {
  const _$DeleteTaskImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TaskEvent.deleteTask(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readTasks,
    required TResult Function(
            String title, String category, String dueDate, String? workLocation)
        createTask,
    required TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)
        updateTask,
    required TResult Function(int id) toggleComplete,
    required TResult Function(int id) deleteTask,
    required TResult Function() clearAllTasks,
    required TResult Function(TaskTab tab) changeTab,
  }) {
    return deleteTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? readTasks,
    TResult? Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult? Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult? Function(int id)? toggleComplete,
    TResult? Function(int id)? deleteTask,
    TResult? Function()? clearAllTasks,
    TResult? Function(TaskTab tab)? changeTab,
  }) {
    return deleteTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readTasks,
    TResult Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult Function(int id)? toggleComplete,
    TResult Function(int id)? deleteTask,
    TResult Function()? clearAllTasks,
    TResult Function(TaskTab tab)? changeTab,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadTasks value) readTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ToggleComplete value) toggleComplete,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ClearAllTasks value) clearAllTasks,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReadTasks value)? readTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ToggleComplete value)? toggleComplete,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ClearAllTasks value)? clearAllTasks,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadTasks value)? readTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ToggleComplete value)? toggleComplete,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ClearAllTasks value)? clearAllTasks,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements TaskEvent {
  const factory _DeleteTask({required final int id}) = _$DeleteTaskImpl;

  int get id;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearAllTasksImplCopyWith<$Res> {
  factory _$$ClearAllTasksImplCopyWith(
          _$ClearAllTasksImpl value, $Res Function(_$ClearAllTasksImpl) then) =
      __$$ClearAllTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearAllTasksImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ClearAllTasksImpl>
    implements _$$ClearAllTasksImplCopyWith<$Res> {
  __$$ClearAllTasksImplCopyWithImpl(
      _$ClearAllTasksImpl _value, $Res Function(_$ClearAllTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearAllTasksImpl implements _ClearAllTasks {
  const _$ClearAllTasksImpl();

  @override
  String toString() {
    return 'TaskEvent.clearAllTasks()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearAllTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readTasks,
    required TResult Function(
            String title, String category, String dueDate, String? workLocation)
        createTask,
    required TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)
        updateTask,
    required TResult Function(int id) toggleComplete,
    required TResult Function(int id) deleteTask,
    required TResult Function() clearAllTasks,
    required TResult Function(TaskTab tab) changeTab,
  }) {
    return clearAllTasks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? readTasks,
    TResult? Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult? Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult? Function(int id)? toggleComplete,
    TResult? Function(int id)? deleteTask,
    TResult? Function()? clearAllTasks,
    TResult? Function(TaskTab tab)? changeTab,
  }) {
    return clearAllTasks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readTasks,
    TResult Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult Function(int id)? toggleComplete,
    TResult Function(int id)? deleteTask,
    TResult Function()? clearAllTasks,
    TResult Function(TaskTab tab)? changeTab,
    required TResult orElse(),
  }) {
    if (clearAllTasks != null) {
      return clearAllTasks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadTasks value) readTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ToggleComplete value) toggleComplete,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ClearAllTasks value) clearAllTasks,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return clearAllTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReadTasks value)? readTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ToggleComplete value)? toggleComplete,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ClearAllTasks value)? clearAllTasks,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return clearAllTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadTasks value)? readTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ToggleComplete value)? toggleComplete,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ClearAllTasks value)? clearAllTasks,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (clearAllTasks != null) {
      return clearAllTasks(this);
    }
    return orElse();
  }
}

abstract class _ClearAllTasks implements TaskEvent {
  const factory _ClearAllTasks() = _$ClearAllTasksImpl;
}

/// @nodoc
abstract class _$$ChangeTabImplCopyWith<$Res> {
  factory _$$ChangeTabImplCopyWith(
          _$ChangeTabImpl value, $Res Function(_$ChangeTabImpl) then) =
      __$$ChangeTabImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskTab tab});
}

/// @nodoc
class __$$ChangeTabImplCopyWithImpl<$Res>
    extends _$TaskEventCopyWithImpl<$Res, _$ChangeTabImpl>
    implements _$$ChangeTabImplCopyWith<$Res> {
  __$$ChangeTabImplCopyWithImpl(
      _$ChangeTabImpl _value, $Res Function(_$ChangeTabImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
  }) {
    return _then(_$ChangeTabImpl(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as TaskTab,
    ));
  }
}

/// @nodoc

class _$ChangeTabImpl implements _ChangeTab {
  const _$ChangeTabImpl({required this.tab});

  @override
  final TaskTab tab;

  @override
  String toString() {
    return 'TaskEvent.changeTab(tab: $tab)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeTabImpl &&
            (identical(other.tab, tab) || other.tab == tab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab);

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTabImplCopyWith<_$ChangeTabImpl> get copyWith =>
      __$$ChangeTabImplCopyWithImpl<_$ChangeTabImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() readTasks,
    required TResult Function(
            String title, String category, String dueDate, String? workLocation)
        createTask,
    required TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)
        updateTask,
    required TResult Function(int id) toggleComplete,
    required TResult Function(int id) deleteTask,
    required TResult Function() clearAllTasks,
    required TResult Function(TaskTab tab) changeTab,
  }) {
    return changeTab(tab);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? readTasks,
    TResult? Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult? Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult? Function(int id)? toggleComplete,
    TResult? Function(int id)? deleteTask,
    TResult? Function()? clearAllTasks,
    TResult? Function(TaskTab tab)? changeTab,
  }) {
    return changeTab?.call(tab);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? readTasks,
    TResult Function(String title, String category, String dueDate,
            String? workLocation)?
        createTask,
    TResult Function(int id, String? title, String? dueDate,
            String? workLocation, bool? completed)?
        updateTask,
    TResult Function(int id)? toggleComplete,
    TResult Function(int id)? deleteTask,
    TResult Function()? clearAllTasks,
    TResult Function(TaskTab tab)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(tab);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ReadTasks value) readTasks,
    required TResult Function(_CreateTask value) createTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_ToggleComplete value) toggleComplete,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_ClearAllTasks value) clearAllTasks,
    required TResult Function(_ChangeTab value) changeTab,
  }) {
    return changeTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ReadTasks value)? readTasks,
    TResult? Function(_CreateTask value)? createTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_ToggleComplete value)? toggleComplete,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_ClearAllTasks value)? clearAllTasks,
    TResult? Function(_ChangeTab value)? changeTab,
  }) {
    return changeTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ReadTasks value)? readTasks,
    TResult Function(_CreateTask value)? createTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_ToggleComplete value)? toggleComplete,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_ClearAllTasks value)? clearAllTasks,
    TResult Function(_ChangeTab value)? changeTab,
    required TResult orElse(),
  }) {
    if (changeTab != null) {
      return changeTab(this);
    }
    return orElse();
  }
}

abstract class _ChangeTab implements TaskEvent {
  const factory _ChangeTab({required final TaskTab tab}) = _$ChangeTabImpl;

  TaskTab get tab;

  /// Create a copy of TaskEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeTabImplCopyWith<_$ChangeTabImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TaskState {
  List<TaskEntity> get tasks => throw _privateConstructorUsedError;
  TaskTab get activeTab => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  TaskStatus? get status => throw _privateConstructorUsedError;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskStateCopyWith<TaskState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskStateCopyWith<$Res> {
  factory $TaskStateCopyWith(TaskState value, $Res Function(TaskState) then) =
      _$TaskStateCopyWithImpl<$Res, TaskState>;
  @useResult
  $Res call(
      {List<TaskEntity> tasks,
      TaskTab activeTab,
      bool isLoading,
      String? errorMessage,
      TaskStatus? status});
}

/// @nodoc
class _$TaskStateCopyWithImpl<$Res, $Val extends TaskState>
    implements $TaskStateCopyWith<$Res> {
  _$TaskStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? activeTab = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      activeTab: null == activeTab
          ? _value.activeTab
          : activeTab // ignore: cast_nullable_to_non_nullable
              as TaskTab,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskStateImplCopyWith<$Res>
    implements $TaskStateCopyWith<$Res> {
  factory _$$TaskStateImplCopyWith(
          _$TaskStateImpl value, $Res Function(_$TaskStateImpl) then) =
      __$$TaskStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<TaskEntity> tasks,
      TaskTab activeTab,
      bool isLoading,
      String? errorMessage,
      TaskStatus? status});
}

/// @nodoc
class __$$TaskStateImplCopyWithImpl<$Res>
    extends _$TaskStateCopyWithImpl<$Res, _$TaskStateImpl>
    implements _$$TaskStateImplCopyWith<$Res> {
  __$$TaskStateImplCopyWithImpl(
      _$TaskStateImpl _value, $Res Function(_$TaskStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? activeTab = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? status = freezed,
  }) {
    return _then(_$TaskStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      activeTab: null == activeTab
          ? _value.activeTab
          : activeTab // ignore: cast_nullable_to_non_nullable
              as TaskTab,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TaskStatus?,
    ));
  }
}

/// @nodoc

class _$TaskStateImpl implements _TaskState {
  const _$TaskStateImpl(
      {final List<TaskEntity> tasks = const [],
      this.activeTab = TaskTab.work,
      this.isLoading = false,
      this.errorMessage = null,
      this.status = null})
      : _tasks = tasks;

  final List<TaskEntity> _tasks;
  @override
  @JsonKey()
  List<TaskEntity> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  @override
  @JsonKey()
  final TaskTab activeTab;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final TaskStatus? status;

  @override
  String toString() {
    return 'TaskState(tasks: $tasks, activeTab: $activeTab, isLoading: $isLoading, errorMessage: $errorMessage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            (identical(other.activeTab, activeTab) ||
                other.activeTab == activeTab) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      activeTab,
      isLoading,
      errorMessage,
      status);

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      __$$TaskStateImplCopyWithImpl<_$TaskStateImpl>(this, _$identity);
}

abstract class _TaskState implements TaskState {
  const factory _TaskState(
      {final List<TaskEntity> tasks,
      final TaskTab activeTab,
      final bool isLoading,
      final String? errorMessage,
      final TaskStatus? status}) = _$TaskStateImpl;

  @override
  List<TaskEntity> get tasks;
  @override
  TaskTab get activeTab;
  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  TaskStatus? get status;

  /// Create a copy of TaskState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskStateImplCopyWith<_$TaskStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
