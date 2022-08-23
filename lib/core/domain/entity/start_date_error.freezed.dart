// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'start_date_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StartDateError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isAfter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? isAfter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isAfter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDateIsAfter value) isAfter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartDateIsAfter value)? isAfter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDateIsAfter value)? isAfter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StartDateErrorCopyWith<$Res> {
  factory $StartDateErrorCopyWith(
          StartDateError value, $Res Function(StartDateError) then) =
      _$StartDateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartDateErrorCopyWithImpl<$Res>
    implements $StartDateErrorCopyWith<$Res> {
  _$StartDateErrorCopyWithImpl(this._value, this._then);

  final StartDateError _value;
  // ignore: unused_field
  final $Res Function(StartDateError) _then;
}

/// @nodoc
abstract class _$$StartDateIsAfterCopyWith<$Res> {
  factory _$$StartDateIsAfterCopyWith(
          _$StartDateIsAfter value, $Res Function(_$StartDateIsAfter) then) =
      __$$StartDateIsAfterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartDateIsAfterCopyWithImpl<$Res>
    extends _$StartDateErrorCopyWithImpl<$Res>
    implements _$$StartDateIsAfterCopyWith<$Res> {
  __$$StartDateIsAfterCopyWithImpl(
      _$StartDateIsAfter _value, $Res Function(_$StartDateIsAfter) _then)
      : super(_value, (v) => _then(v as _$StartDateIsAfter));

  @override
  _$StartDateIsAfter get _value => super._value as _$StartDateIsAfter;
}

/// @nodoc

class _$StartDateIsAfter implements StartDateIsAfter {
  const _$StartDateIsAfter();

  @override
  String toString() {
    return 'StartDateError.isAfter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartDateIsAfter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isAfter,
  }) {
    return isAfter();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? isAfter,
  }) {
    return isAfter?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isAfter,
    required TResult orElse(),
  }) {
    if (isAfter != null) {
      return isAfter();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartDateIsAfter value) isAfter,
  }) {
    return isAfter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(StartDateIsAfter value)? isAfter,
  }) {
    return isAfter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartDateIsAfter value)? isAfter,
    required TResult orElse(),
  }) {
    if (isAfter != null) {
      return isAfter(this);
    }
    return orElse();
  }
}

abstract class StartDateIsAfter implements StartDateError {
  const factory StartDateIsAfter() = _$StartDateIsAfter;
}
