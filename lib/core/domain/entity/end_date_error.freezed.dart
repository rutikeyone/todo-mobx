// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'end_date_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EndDateError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isBetween,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? isBetween,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isBetween,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndDateIsBetween value) isBetween,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EndDateIsBetween value)? isBetween,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndDateIsBetween value)? isBetween,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EndDateErrorCopyWith<$Res> {
  factory $EndDateErrorCopyWith(
          EndDateError value, $Res Function(EndDateError) then) =
      _$EndDateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$EndDateErrorCopyWithImpl<$Res> implements $EndDateErrorCopyWith<$Res> {
  _$EndDateErrorCopyWithImpl(this._value, this._then);

  final EndDateError _value;
  // ignore: unused_field
  final $Res Function(EndDateError) _then;
}

/// @nodoc
abstract class _$$EndDateIsBetweenCopyWith<$Res> {
  factory _$$EndDateIsBetweenCopyWith(
          _$EndDateIsBetween value, $Res Function(_$EndDateIsBetween) then) =
      __$$EndDateIsBetweenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EndDateIsBetweenCopyWithImpl<$Res>
    extends _$EndDateErrorCopyWithImpl<$Res>
    implements _$$EndDateIsBetweenCopyWith<$Res> {
  __$$EndDateIsBetweenCopyWithImpl(
      _$EndDateIsBetween _value, $Res Function(_$EndDateIsBetween) _then)
      : super(_value, (v) => _then(v as _$EndDateIsBetween));

  @override
  _$EndDateIsBetween get _value => super._value as _$EndDateIsBetween;
}

/// @nodoc

class _$EndDateIsBetween implements EndDateIsBetween {
  const _$EndDateIsBetween();

  @override
  String toString() {
    return 'EndDateError.isBetween()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EndDateIsBetween);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() isBetween,
  }) {
    return isBetween();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? isBetween,
  }) {
    return isBetween?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? isBetween,
    required TResult orElse(),
  }) {
    if (isBetween != null) {
      return isBetween();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EndDateIsBetween value) isBetween,
  }) {
    return isBetween(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EndDateIsBetween value)? isBetween,
  }) {
    return isBetween?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EndDateIsBetween value)? isBetween,
    required TResult orElse(),
  }) {
    if (isBetween != null) {
      return isBetween(this);
    }
    return orElse();
  }
}

abstract class EndDateIsBetween implements EndDateError {
  const factory EndDateIsBetween() = _$EndDateIsBetween;
}
