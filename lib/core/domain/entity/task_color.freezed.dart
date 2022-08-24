// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskColor _$TaskColorFromJson(Map<String, dynamic> json) {
  return $TaskDefaultColor.fromJson(json);
}

/// @nodoc
mixin _$TaskColor {
  @JsonKey(toJson: colorToJson, fromJson: jsonToColor)
  Color get color => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskColorCopyWith<TaskColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskColorCopyWith<$Res> {
  factory $TaskColorCopyWith(TaskColor value, $Res Function(TaskColor) then) =
      _$TaskColorCopyWithImpl<$Res>;
  $Res call({@JsonKey(toJson: colorToJson, fromJson: jsonToColor) Color color});
}

/// @nodoc
class _$TaskColorCopyWithImpl<$Res> implements $TaskColorCopyWith<$Res> {
  _$TaskColorCopyWithImpl(this._value, this._then);

  final TaskColor _value;
  // ignore: unused_field
  final $Res Function(TaskColor) _then;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$$$TaskDefaultColorCopyWith<$Res>
    implements $TaskColorCopyWith<$Res> {
  factory _$$$TaskDefaultColorCopyWith(
          _$$TaskDefaultColor value, $Res Function(_$$TaskDefaultColor) then) =
      __$$$TaskDefaultColorCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(toJson: colorToJson, fromJson: jsonToColor) Color color});
}

/// @nodoc
class __$$$TaskDefaultColorCopyWithImpl<$Res>
    extends _$TaskColorCopyWithImpl<$Res>
    implements _$$$TaskDefaultColorCopyWith<$Res> {
  __$$$TaskDefaultColorCopyWithImpl(
      _$$TaskDefaultColor _value, $Res Function(_$$TaskDefaultColor) _then)
      : super(_value, (v) => _then(v as _$$TaskDefaultColor));

  @override
  _$$TaskDefaultColor get _value => super._value as _$$TaskDefaultColor;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$$TaskDefaultColor(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$$TaskDefaultColor implements $TaskDefaultColor {
  const _$$TaskDefaultColor(
      @JsonKey(toJson: colorToJson, fromJson: jsonToColor) this.color);

  factory _$$TaskDefaultColor.fromJson(Map<String, dynamic> json) =>
      _$$$TaskDefaultColorFromJson(json);

  @override
  @JsonKey(toJson: colorToJson, fromJson: jsonToColor)
  final Color color;

  @override
  String toString() {
    return 'TaskColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$$TaskDefaultColor &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$$TaskDefaultColorCopyWith<_$$TaskDefaultColor> get copyWith =>
      __$$$TaskDefaultColorCopyWithImpl<_$$TaskDefaultColor>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$$TaskDefaultColorToJson(
      this,
    );
  }
}

abstract class $TaskDefaultColor implements TaskColor {
  const factory $TaskDefaultColor(
      @JsonKey(toJson: colorToJson, fromJson: jsonToColor)
          final Color color) = _$$TaskDefaultColor;

  factory $TaskDefaultColor.fromJson(Map<String, dynamic> json) =
      _$$TaskDefaultColor.fromJson;

  @override
  @JsonKey(toJson: colorToJson, fromJson: jsonToColor)
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$$TaskDefaultColorCopyWith<_$$TaskDefaultColor> get copyWith =>
      throw _privateConstructorUsedError;
}
