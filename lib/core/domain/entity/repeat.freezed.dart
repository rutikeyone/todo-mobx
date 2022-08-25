// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'repeat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Repeat _$RepeatFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'none':
      return RepeatNone.fromJson(json);
    case 'daily':
      return RepeatDaily.fromJson(json);
    case 'weekly':
      return RepeatWeekly.fromJson(json);
    case 'monthly':
      return RepeatMonthly.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Repeat',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Repeat {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatNone value) none,
    required TResult Function(RepeatDaily value) daily,
    required TResult Function(RepeatWeekly value) weekly,
    required TResult Function(RepeatMonthly value) monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatNone value)? none,
    TResult Function(RepeatDaily value)? daily,
    TResult Function(RepeatWeekly value)? weekly,
    TResult Function(RepeatMonthly value)? monthly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatNone value)? none,
    TResult Function(RepeatDaily value)? daily,
    TResult Function(RepeatWeekly value)? weekly,
    TResult Function(RepeatMonthly value)? monthly,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepeatCopyWith<$Res> {
  factory $RepeatCopyWith(Repeat value, $Res Function(Repeat) then) =
      _$RepeatCopyWithImpl<$Res>;
}

/// @nodoc
class _$RepeatCopyWithImpl<$Res> implements $RepeatCopyWith<$Res> {
  _$RepeatCopyWithImpl(this._value, this._then);

  final Repeat _value;
  // ignore: unused_field
  final $Res Function(Repeat) _then;
}

/// @nodoc
abstract class _$$RepeatNoneCopyWith<$Res> {
  factory _$$RepeatNoneCopyWith(
          _$RepeatNone value, $Res Function(_$RepeatNone) then) =
      __$$RepeatNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RepeatNoneCopyWithImpl<$Res> extends _$RepeatCopyWithImpl<$Res>
    implements _$$RepeatNoneCopyWith<$Res> {
  __$$RepeatNoneCopyWithImpl(
      _$RepeatNone _value, $Res Function(_$RepeatNone) _then)
      : super(_value, (v) => _then(v as _$RepeatNone));

  @override
  _$RepeatNone get _value => super._value as _$RepeatNone;
}

/// @nodoc
@JsonSerializable()
class _$RepeatNone implements RepeatNone {
  const _$RepeatNone({final String? $type}) : $type = $type ?? 'none';

  factory _$RepeatNone.fromJson(Map<String, dynamic> json) =>
      _$$RepeatNoneFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Repeat.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RepeatNone);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatNone value) none,
    required TResult Function(RepeatDaily value) daily,
    required TResult Function(RepeatWeekly value) weekly,
    required TResult Function(RepeatMonthly value) monthly,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatNone value)? none,
    TResult Function(RepeatDaily value)? daily,
    TResult Function(RepeatWeekly value)? weekly,
    TResult Function(RepeatMonthly value)? monthly,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatNone value)? none,
    TResult Function(RepeatDaily value)? daily,
    TResult Function(RepeatWeekly value)? weekly,
    TResult Function(RepeatMonthly value)? monthly,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RepeatNoneToJson(
      this,
    );
  }
}

abstract class RepeatNone implements Repeat {
  const factory RepeatNone() = _$RepeatNone;

  factory RepeatNone.fromJson(Map<String, dynamic> json) =
      _$RepeatNone.fromJson;
}

/// @nodoc
abstract class _$$RepeatDailyCopyWith<$Res> {
  factory _$$RepeatDailyCopyWith(
          _$RepeatDaily value, $Res Function(_$RepeatDaily) then) =
      __$$RepeatDailyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RepeatDailyCopyWithImpl<$Res> extends _$RepeatCopyWithImpl<$Res>
    implements _$$RepeatDailyCopyWith<$Res> {
  __$$RepeatDailyCopyWithImpl(
      _$RepeatDaily _value, $Res Function(_$RepeatDaily) _then)
      : super(_value, (v) => _then(v as _$RepeatDaily));

  @override
  _$RepeatDaily get _value => super._value as _$RepeatDaily;
}

/// @nodoc
@JsonSerializable()
class _$RepeatDaily implements RepeatDaily {
  const _$RepeatDaily({final String? $type}) : $type = $type ?? 'daily';

  factory _$RepeatDaily.fromJson(Map<String, dynamic> json) =>
      _$$RepeatDailyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Repeat.daily()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RepeatDaily);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
  }) {
    return daily();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
  }) {
    return daily?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    required TResult orElse(),
  }) {
    if (daily != null) {
      return daily();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatNone value) none,
    required TResult Function(RepeatDaily value) daily,
    required TResult Function(RepeatWeekly value) weekly,
    required TResult Function(RepeatMonthly value) monthly,
  }) {
    return daily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatNone value)? none,
    TResult Function(RepeatDaily value)? daily,
    TResult Function(RepeatWeekly value)? weekly,
    TResult Function(RepeatMonthly value)? monthly,
  }) {
    return daily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatNone value)? none,
    TResult Function(RepeatDaily value)? daily,
    TResult Function(RepeatWeekly value)? weekly,
    TResult Function(RepeatMonthly value)? monthly,
    required TResult orElse(),
  }) {
    if (daily != null) {
      return daily(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RepeatDailyToJson(
      this,
    );
  }
}

abstract class RepeatDaily implements Repeat {
  const factory RepeatDaily() = _$RepeatDaily;

  factory RepeatDaily.fromJson(Map<String, dynamic> json) =
      _$RepeatDaily.fromJson;
}

/// @nodoc
abstract class _$$RepeatWeeklyCopyWith<$Res> {
  factory _$$RepeatWeeklyCopyWith(
          _$RepeatWeekly value, $Res Function(_$RepeatWeekly) then) =
      __$$RepeatWeeklyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RepeatWeeklyCopyWithImpl<$Res> extends _$RepeatCopyWithImpl<$Res>
    implements _$$RepeatWeeklyCopyWith<$Res> {
  __$$RepeatWeeklyCopyWithImpl(
      _$RepeatWeekly _value, $Res Function(_$RepeatWeekly) _then)
      : super(_value, (v) => _then(v as _$RepeatWeekly));

  @override
  _$RepeatWeekly get _value => super._value as _$RepeatWeekly;
}

/// @nodoc
@JsonSerializable()
class _$RepeatWeekly implements RepeatWeekly {
  const _$RepeatWeekly({final String? $type}) : $type = $type ?? 'weekly';

  factory _$RepeatWeekly.fromJson(Map<String, dynamic> json) =>
      _$$RepeatWeeklyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Repeat.weekly()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RepeatWeekly);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
  }) {
    return weekly();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
  }) {
    return weekly?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    required TResult orElse(),
  }) {
    if (weekly != null) {
      return weekly();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatNone value) none,
    required TResult Function(RepeatDaily value) daily,
    required TResult Function(RepeatWeekly value) weekly,
    required TResult Function(RepeatMonthly value) monthly,
  }) {
    return weekly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatNone value)? none,
    TResult Function(RepeatDaily value)? daily,
    TResult Function(RepeatWeekly value)? weekly,
    TResult Function(RepeatMonthly value)? monthly,
  }) {
    return weekly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatNone value)? none,
    TResult Function(RepeatDaily value)? daily,
    TResult Function(RepeatWeekly value)? weekly,
    TResult Function(RepeatMonthly value)? monthly,
    required TResult orElse(),
  }) {
    if (weekly != null) {
      return weekly(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RepeatWeeklyToJson(
      this,
    );
  }
}

abstract class RepeatWeekly implements Repeat {
  const factory RepeatWeekly() = _$RepeatWeekly;

  factory RepeatWeekly.fromJson(Map<String, dynamic> json) =
      _$RepeatWeekly.fromJson;
}

/// @nodoc
abstract class _$$RepeatMonthlyCopyWith<$Res> {
  factory _$$RepeatMonthlyCopyWith(
          _$RepeatMonthly value, $Res Function(_$RepeatMonthly) then) =
      __$$RepeatMonthlyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RepeatMonthlyCopyWithImpl<$Res> extends _$RepeatCopyWithImpl<$Res>
    implements _$$RepeatMonthlyCopyWith<$Res> {
  __$$RepeatMonthlyCopyWithImpl(
      _$RepeatMonthly _value, $Res Function(_$RepeatMonthly) _then)
      : super(_value, (v) => _then(v as _$RepeatMonthly));

  @override
  _$RepeatMonthly get _value => super._value as _$RepeatMonthly;
}

/// @nodoc
@JsonSerializable()
class _$RepeatMonthly implements RepeatMonthly {
  const _$RepeatMonthly({final String? $type}) : $type = $type ?? 'monthly';

  factory _$RepeatMonthly.fromJson(Map<String, dynamic> json) =>
      _$$RepeatMonthlyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Repeat.monthly()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RepeatMonthly);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
  }) {
    return monthly();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
  }) {
    return monthly?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    required TResult orElse(),
  }) {
    if (monthly != null) {
      return monthly();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RepeatNone value) none,
    required TResult Function(RepeatDaily value) daily,
    required TResult Function(RepeatWeekly value) weekly,
    required TResult Function(RepeatMonthly value) monthly,
  }) {
    return monthly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(RepeatNone value)? none,
    TResult Function(RepeatDaily value)? daily,
    TResult Function(RepeatWeekly value)? weekly,
    TResult Function(RepeatMonthly value)? monthly,
  }) {
    return monthly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RepeatNone value)? none,
    TResult Function(RepeatDaily value)? daily,
    TResult Function(RepeatWeekly value)? weekly,
    TResult Function(RepeatMonthly value)? monthly,
    required TResult orElse(),
  }) {
    if (monthly != null) {
      return monthly(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RepeatMonthlyToJson(
      this,
    );
  }
}

abstract class RepeatMonthly implements Repeat {
  const factory RepeatMonthly() = _$RepeatMonthly;

  factory RepeatMonthly.fromJson(Map<String, dynamic> json) =
      _$RepeatMonthly.fromJson;
}
