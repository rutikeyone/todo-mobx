// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'db_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DbResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DbResultSuccess value) success,
    required TResult Function(DbResultFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DbResultSuccess value)? success,
    TResult Function(DbResultFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DbResultSuccess value)? success,
    TResult Function(DbResultFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DbResultCopyWith<$Res> {
  factory $DbResultCopyWith(DbResult value, $Res Function(DbResult) then) =
      _$DbResultCopyWithImpl<$Res>;
}

/// @nodoc
class _$DbResultCopyWithImpl<$Res> implements $DbResultCopyWith<$Res> {
  _$DbResultCopyWithImpl(this._value, this._then);

  final DbResult _value;
  // ignore: unused_field
  final $Res Function(DbResult) _then;
}

/// @nodoc
abstract class _$$DbResultSuccessCopyWith<$Res> {
  factory _$$DbResultSuccessCopyWith(
          _$DbResultSuccess value, $Res Function(_$DbResultSuccess) then) =
      __$$DbResultSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DbResultSuccessCopyWithImpl<$Res> extends _$DbResultCopyWithImpl<$Res>
    implements _$$DbResultSuccessCopyWith<$Res> {
  __$$DbResultSuccessCopyWithImpl(
      _$DbResultSuccess _value, $Res Function(_$DbResultSuccess) _then)
      : super(_value, (v) => _then(v as _$DbResultSuccess));

  @override
  _$DbResultSuccess get _value => super._value as _$DbResultSuccess;
}

/// @nodoc

class _$DbResultSuccess implements DbResultSuccess {
  const _$DbResultSuccess();

  @override
  String toString() {
    return 'DbResult.success()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DbResultSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return success();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
  }) {
    return success?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DbResultSuccess value) success,
    required TResult Function(DbResultFailure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DbResultSuccess value)? success,
    TResult Function(DbResultFailure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DbResultSuccess value)? success,
    TResult Function(DbResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class DbResultSuccess implements DbResult {
  const factory DbResultSuccess() = _$DbResultSuccess;
}

/// @nodoc
abstract class _$$DbResultFailureCopyWith<$Res> {
  factory _$$DbResultFailureCopyWith(
          _$DbResultFailure value, $Res Function(_$DbResultFailure) then) =
      __$$DbResultFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DbResultFailureCopyWithImpl<$Res> extends _$DbResultCopyWithImpl<$Res>
    implements _$$DbResultFailureCopyWith<$Res> {
  __$$DbResultFailureCopyWithImpl(
      _$DbResultFailure _value, $Res Function(_$DbResultFailure) _then)
      : super(_value, (v) => _then(v as _$DbResultFailure));

  @override
  _$DbResultFailure get _value => super._value as _$DbResultFailure;
}

/// @nodoc

class _$DbResultFailure implements DbResultFailure {
  const _$DbResultFailure();

  @override
  String toString() {
    return 'DbResult.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DbResultFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() success,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? success,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DbResultSuccess value) success,
    required TResult Function(DbResultFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(DbResultSuccess value)? success,
    TResult Function(DbResultFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DbResultSuccess value)? success,
    TResult Function(DbResultFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class DbResultFailure implements DbResult {
  const factory DbResultFailure() = _$DbResultFailure;
}
