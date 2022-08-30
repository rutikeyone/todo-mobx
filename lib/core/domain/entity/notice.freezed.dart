// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notice.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Notice _$NoticeFromJson(Map<String, dynamic> json) {
  return _Notice.fromJson(json);
}

/// @nodoc
mixin _$Notice {
  int get id => throw _privateConstructorUsedError;
  int get taskId => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  bool get isRemind => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NoticeCopyWith<Notice> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoticeCopyWith<$Res> {
  factory $NoticeCopyWith(Notice value, $Res Function(Notice) then) =
      _$NoticeCopyWithImpl<$Res>;
  $Res call({int id, int taskId, String body, String title, bool isRemind});
}

/// @nodoc
class _$NoticeCopyWithImpl<$Res> implements $NoticeCopyWith<$Res> {
  _$NoticeCopyWithImpl(this._value, this._then);

  final Notice _value;
  // ignore: unused_field
  final $Res Function(Notice) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? taskId = freezed,
    Object? body = freezed,
    Object? title = freezed,
    Object? isRemind = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isRemind: isRemind == freezed
          ? _value.isRemind
          : isRemind // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_NoticeCopyWith<$Res> implements $NoticeCopyWith<$Res> {
  factory _$$_NoticeCopyWith(_$_Notice value, $Res Function(_$_Notice) then) =
      __$$_NoticeCopyWithImpl<$Res>;
  @override
  $Res call({int id, int taskId, String body, String title, bool isRemind});
}

/// @nodoc
class __$$_NoticeCopyWithImpl<$Res> extends _$NoticeCopyWithImpl<$Res>
    implements _$$_NoticeCopyWith<$Res> {
  __$$_NoticeCopyWithImpl(_$_Notice _value, $Res Function(_$_Notice) _then)
      : super(_value, (v) => _then(v as _$_Notice));

  @override
  _$_Notice get _value => super._value as _$_Notice;

  @override
  $Res call({
    Object? id = freezed,
    Object? taskId = freezed,
    Object? body = freezed,
    Object? title = freezed,
    Object? isRemind = freezed,
  }) {
    return _then(_$_Notice(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      taskId: taskId == freezed
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as int,
      body: body == freezed
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      isRemind: isRemind == freezed
          ? _value.isRemind
          : isRemind // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Notice implements _Notice {
  const _$_Notice(
      {required this.id,
      required this.taskId,
      required this.body,
      required this.title,
      this.isRemind = false});

  factory _$_Notice.fromJson(Map<String, dynamic> json) =>
      _$$_NoticeFromJson(json);

  @override
  final int id;
  @override
  final int taskId;
  @override
  final String body;
  @override
  final String title;
  @override
  @JsonKey()
  final bool isRemind;

  @override
  String toString() {
    return 'Notice(id: $id, taskId: $taskId, body: $body, title: $title, isRemind: $isRemind)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Notice &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.taskId, taskId) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.isRemind, isRemind));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(taskId),
      const DeepCollectionEquality().hash(body),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(isRemind));

  @JsonKey(ignore: true)
  @override
  _$$_NoticeCopyWith<_$_Notice> get copyWith =>
      __$$_NoticeCopyWithImpl<_$_Notice>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NoticeToJson(
      this,
    );
  }
}

abstract class _Notice implements Notice {
  const factory _Notice(
      {required final int id,
      required final int taskId,
      required final String body,
      required final String title,
      final bool isRemind}) = _$_Notice;

  factory _Notice.fromJson(Map<String, dynamic> json) = _$_Notice.fromJson;

  @override
  int get id;
  @override
  int get taskId;
  @override
  String get body;
  @override
  String get title;
  @override
  bool get isRemind;
  @override
  @JsonKey(ignore: true)
  _$$_NoticeCopyWith<_$_Notice> get copyWith =>
      throw _privateConstructorUsedError;
}
