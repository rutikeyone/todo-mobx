// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationAction {
  Task get task => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) addRemindScheduledNotification,
    required TResult Function(Task task) addScheduledNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? addRemindScheduledNotification,
    TResult Function(Task task)? addScheduledNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? addRemindScheduledNotification,
    TResult Function(Task task)? addScheduledNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddRemindScheduledNotification value)
        addRemindScheduledNotification,
    required TResult Function(AddScheduledNotification value)
        addScheduledNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddRemindScheduledNotification value)?
        addRemindScheduledNotification,
    TResult Function(AddScheduledNotification value)? addScheduledNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddRemindScheduledNotification value)?
        addRemindScheduledNotification,
    TResult Function(AddScheduledNotification value)? addScheduledNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationActionCopyWith<NotificationAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationActionCopyWith<$Res> {
  factory $NotificationActionCopyWith(
          NotificationAction value, $Res Function(NotificationAction) then) =
      _$NotificationActionCopyWithImpl<$Res>;
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class _$NotificationActionCopyWithImpl<$Res>
    implements $NotificationActionCopyWith<$Res> {
  _$NotificationActionCopyWithImpl(this._value, this._then);

  final NotificationAction _value;
  // ignore: unused_field
  final $Res Function(NotificationAction) _then;

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
abstract class _$$AddRemindScheduledNotificationCopyWith<$Res>
    implements $NotificationActionCopyWith<$Res> {
  factory _$$AddRemindScheduledNotificationCopyWith(
          _$AddRemindScheduledNotification value,
          $Res Function(_$AddRemindScheduledNotification) then) =
      __$$AddRemindScheduledNotificationCopyWithImpl<$Res>;
  @override
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$AddRemindScheduledNotificationCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res>
    implements _$$AddRemindScheduledNotificationCopyWith<$Res> {
  __$$AddRemindScheduledNotificationCopyWithImpl(
      _$AddRemindScheduledNotification _value,
      $Res Function(_$AddRemindScheduledNotification) _then)
      : super(_value, (v) => _then(v as _$AddRemindScheduledNotification));

  @override
  _$AddRemindScheduledNotification get _value =>
      super._value as _$AddRemindScheduledNotification;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$AddRemindScheduledNotification(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$AddRemindScheduledNotification
    implements AddRemindScheduledNotification {
  const _$AddRemindScheduledNotification(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'NotificationAction.addRemindScheduledNotification(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRemindScheduledNotification &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$AddRemindScheduledNotificationCopyWith<_$AddRemindScheduledNotification>
      get copyWith => __$$AddRemindScheduledNotificationCopyWithImpl<
          _$AddRemindScheduledNotification>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) addRemindScheduledNotification,
    required TResult Function(Task task) addScheduledNotification,
  }) {
    return addRemindScheduledNotification(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? addRemindScheduledNotification,
    TResult Function(Task task)? addScheduledNotification,
  }) {
    return addRemindScheduledNotification?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? addRemindScheduledNotification,
    TResult Function(Task task)? addScheduledNotification,
    required TResult orElse(),
  }) {
    if (addRemindScheduledNotification != null) {
      return addRemindScheduledNotification(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddRemindScheduledNotification value)
        addRemindScheduledNotification,
    required TResult Function(AddScheduledNotification value)
        addScheduledNotification,
  }) {
    return addRemindScheduledNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddRemindScheduledNotification value)?
        addRemindScheduledNotification,
    TResult Function(AddScheduledNotification value)? addScheduledNotification,
  }) {
    return addRemindScheduledNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddRemindScheduledNotification value)?
        addRemindScheduledNotification,
    TResult Function(AddScheduledNotification value)? addScheduledNotification,
    required TResult orElse(),
  }) {
    if (addRemindScheduledNotification != null) {
      return addRemindScheduledNotification(this);
    }
    return orElse();
  }
}

abstract class AddRemindScheduledNotification implements NotificationAction {
  const factory AddRemindScheduledNotification(final Task task) =
      _$AddRemindScheduledNotification;

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$$AddRemindScheduledNotificationCopyWith<_$AddRemindScheduledNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddScheduledNotificationCopyWith<$Res>
    implements $NotificationActionCopyWith<$Res> {
  factory _$$AddScheduledNotificationCopyWith(_$AddScheduledNotification value,
          $Res Function(_$AddScheduledNotification) then) =
      __$$AddScheduledNotificationCopyWithImpl<$Res>;
  @override
  $Res call({Task task});

  @override
  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$AddScheduledNotificationCopyWithImpl<$Res>
    extends _$NotificationActionCopyWithImpl<$Res>
    implements _$$AddScheduledNotificationCopyWith<$Res> {
  __$$AddScheduledNotificationCopyWithImpl(_$AddScheduledNotification _value,
      $Res Function(_$AddScheduledNotification) _then)
      : super(_value, (v) => _then(v as _$AddScheduledNotification));

  @override
  _$AddScheduledNotification get _value =>
      super._value as _$AddScheduledNotification;

  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$AddScheduledNotification(
      task == freezed
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }
}

/// @nodoc

class _$AddScheduledNotification implements AddScheduledNotification {
  const _$AddScheduledNotification(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'NotificationAction.addScheduledNotification(task: $task)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddScheduledNotification &&
            const DeepCollectionEquality().equals(other.task, task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(task));

  @JsonKey(ignore: true)
  @override
  _$$AddScheduledNotificationCopyWith<_$AddScheduledNotification>
      get copyWith =>
          __$$AddScheduledNotificationCopyWithImpl<_$AddScheduledNotification>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Task task) addRemindScheduledNotification,
    required TResult Function(Task task) addScheduledNotification,
  }) {
    return addScheduledNotification(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Task task)? addRemindScheduledNotification,
    TResult Function(Task task)? addScheduledNotification,
  }) {
    return addScheduledNotification?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Task task)? addRemindScheduledNotification,
    TResult Function(Task task)? addScheduledNotification,
    required TResult orElse(),
  }) {
    if (addScheduledNotification != null) {
      return addScheduledNotification(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddRemindScheduledNotification value)
        addRemindScheduledNotification,
    required TResult Function(AddScheduledNotification value)
        addScheduledNotification,
  }) {
    return addScheduledNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddRemindScheduledNotification value)?
        addRemindScheduledNotification,
    TResult Function(AddScheduledNotification value)? addScheduledNotification,
  }) {
    return addScheduledNotification?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddRemindScheduledNotification value)?
        addRemindScheduledNotification,
    TResult Function(AddScheduledNotification value)? addScheduledNotification,
    required TResult orElse(),
  }) {
    if (addScheduledNotification != null) {
      return addScheduledNotification(this);
    }
    return orElse();
  }
}

abstract class AddScheduledNotification implements NotificationAction {
  const factory AddScheduledNotification(final Task task) =
      _$AddScheduledNotification;

  @override
  Task get task;
  @override
  @JsonKey(ignore: true)
  _$$AddScheduledNotificationCopyWith<_$AddScheduledNotification>
      get copyWith => throw _privateConstructorUsedError;
}
