// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'add_task_navigation_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddTaskNavigationAction {
  Task get task => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) navigateToTaskNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? navigateToTaskNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? navigateToTaskNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTaskNavigateToTaskNotification value)
        navigateToTaskNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTaskNavigateToTaskNotification value)?
        navigateToTaskNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTaskNavigateToTaskNotification value)?
        navigateToTaskNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTaskNavigationActionCopyWith<AddTaskNavigationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTaskNavigationActionCopyWith<$Res> {
  factory $AddTaskNavigationActionCopyWith(AddTaskNavigationAction value,
          $Res Function(AddTaskNavigationAction) then) =
      _$AddTaskNavigationActionCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$AddTaskNavigationActionCopyWithImpl<$Res>
    implements $AddTaskNavigationActionCopyWith<$Res> {
  _$AddTaskNavigationActionCopyWithImpl(this._value, this._then);

  final AddTaskNavigationAction _value;
  // ignore: unused_field
  final $Res Function(AddTaskNavigationAction) _then;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      task: task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  @override
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc
abstract class _$$AddTaskNavigateToTaskNotificationCopyWith<$Res>
    implements $AddTaskNavigationActionCopyWith<$Res> {
  factory _$$AddTaskNavigateToTaskNotificationCopyWith(
          _$AddTaskNavigateToTaskNotification value,
          $Res Function(_$AddTaskNavigateToTaskNotification) then) =
      __$$AddTaskNavigateToTaskNotificationCopyWithImpl<$Res>;
  @override
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$AddTaskNavigateToTaskNotificationCopyWithImpl<$Res>
    extends _$AddTaskNavigationActionCopyWithImpl<$Res>
    implements _$$AddTaskNavigateToTaskNotificationCopyWith<$Res> {
  __$$AddTaskNavigateToTaskNotificationCopyWithImpl(
      _$AddTaskNavigateToTaskNotification _value,
      $Res Function(_$AddTaskNavigateToTaskNotification) _then)
      : super(_value, (v) => _then(v as _$AddTaskNavigateToTaskNotification));

  @override
  _$AddTaskNavigateToTaskNotification get _value =>
      super._value as _$AddTaskNavigateToTaskNotification;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$AddTaskNavigateToTaskNotification(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$AddTaskNavigateToTaskNotification
    implements AddTaskNavigateToTaskNotification {
  const _$AddTaskNavigateToTaskNotification(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'AddTaskNavigationAction.navigateToTaskNotification(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTaskNavigateToTaskNotification &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$AddTaskNavigateToTaskNotificationCopyWith<
          _$AddTaskNavigateToTaskNotification>
      get copyWith => __$$AddTaskNavigateToTaskNotificationCopyWithImpl<
          _$AddTaskNavigateToTaskNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) navigateToTaskNotification,
  }) {
    return navigateToTaskNotification(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? navigateToTaskNotification,
  }) {
    return navigateToTaskNotification?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? navigateToTaskNotification,
    required TResult orElse(),
  }) {
    if (navigateToTaskNotification != null) {
      return navigateToTaskNotification(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddTaskNavigateToTaskNotification value)
        navigateToTaskNotification,
  }) {
    return navigateToTaskNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddTaskNavigateToTaskNotification value)?
        navigateToTaskNotification,
  }) {
    return navigateToTaskNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddTaskNavigateToTaskNotification value)?
        navigateToTaskNotification,
    required TResult orElse(),
  }) {
    if (navigateToTaskNotification != null) {
      return navigateToTaskNotification(this);
    }
    return orElse();
  }
}

abstract class AddTaskNavigateToTaskNotification
    implements AddTaskNavigationAction {
  const factory AddTaskNavigateToTaskNotification(final Task task) =
      _$AddTaskNavigateToTaskNotification;

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$$AddTaskNavigateToTaskNotificationCopyWith<
          _$AddTaskNavigateToTaskNotification>
      get copyWith => throw _privateConstructorUsedError;
}
