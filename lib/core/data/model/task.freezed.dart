// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Task {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get note => throw _privateConstructorUsedError;
  bool get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(toJson: dateToJson, fromJson: jsonToDate)
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
  TimeOfDay get startDate => throw _privateConstructorUsedError;
  @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
  TimeOfDay get endDate => throw _privateConstructorUsedError;
  TaskColor get taskColor => throw _privateConstructorUsedError;
  Remind get remind => throw _privateConstructorUsedError;
  Repeat get repeat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String title,
      String note,
      bool isCompleted,
      @JsonKey(toJson: dateToJson, fromJson: jsonToDate)
          DateTime date,
      @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
          TimeOfDay startDate,
      @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
          TimeOfDay endDate,
      TaskColor taskColor,
      Remind remind,
      Repeat repeat});

  $TaskColorCopyWith<$Res> get taskColor;
  $RemindCopyWith<$Res> get remind;
  $RepeatCopyWith<$Res> get repeat;
}

/// @nodoc
class _$TaskCopyWithImpl<$Res> implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  final Task _value;
  // ignore: unused_field
  final $Res Function(Task) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? note = freezed,
    Object? isCompleted = freezed,
    Object? date = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? taskColor = freezed,
    Object? remind = freezed,
    Object? repeat = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      taskColor: taskColor == freezed
          ? _value.taskColor
          : taskColor // ignore: cast_nullable_to_non_nullable
              as TaskColor,
      remind: remind == freezed
          ? _value.remind
          : remind // ignore: cast_nullable_to_non_nullable
              as Remind,
      repeat: repeat == freezed
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as Repeat,
    ));
  }

  @override
  $TaskColorCopyWith<$Res> get taskColor {
    return $TaskColorCopyWith<$Res>(_value.taskColor, (value) {
      return _then(_value.copyWith(taskColor: value));
    });
  }

  @override
  $RemindCopyWith<$Res> get remind {
    return $RemindCopyWith<$Res>(_value.remind, (value) {
      return _then(_value.copyWith(remind: value));
    });
  }

  @override
  $RepeatCopyWith<$Res> get repeat {
    return $RepeatCopyWith<$Res>(_value.repeat, (value) {
      return _then(_value.copyWith(repeat: value));
    });
  }
}

/// @nodoc
abstract class _$$_TaskCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$_TaskCopyWith(_$_Task value, $Res Function(_$_Task) then) =
      __$$_TaskCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String title,
      String note,
      bool isCompleted,
      @JsonKey(toJson: dateToJson, fromJson: jsonToDate)
          DateTime date,
      @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
          TimeOfDay startDate,
      @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
          TimeOfDay endDate,
      TaskColor taskColor,
      Remind remind,
      Repeat repeat});

  @override
  $TaskColorCopyWith<$Res> get taskColor;
  @override
  $RemindCopyWith<$Res> get remind;
  @override
  $RepeatCopyWith<$Res> get repeat;
}

/// @nodoc
class __$$_TaskCopyWithImpl<$Res> extends _$TaskCopyWithImpl<$Res>
    implements _$$_TaskCopyWith<$Res> {
  __$$_TaskCopyWithImpl(_$_Task _value, $Res Function(_$_Task) _then)
      : super(_value, (v) => _then(v as _$_Task));

  @override
  _$_Task get _value => super._value as _$_Task;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? note = freezed,
    Object? isCompleted = freezed,
    Object? date = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? taskColor = freezed,
    Object? remind = freezed,
    Object? repeat = freezed,
  }) {
    return _then(_$_Task(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String,
      isCompleted: isCompleted == freezed
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as TimeOfDay,
      taskColor: taskColor == freezed
          ? _value.taskColor
          : taskColor // ignore: cast_nullable_to_non_nullable
              as TaskColor,
      remind: remind == freezed
          ? _value.remind
          : remind // ignore: cast_nullable_to_non_nullable
              as Remind,
      repeat: repeat == freezed
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as Repeat,
    ));
  }
}

/// @nodoc

class _$_Task implements _Task {
  _$_Task(
      {required this.id,
      required this.title,
      required this.note,
      required this.isCompleted,
      @JsonKey(toJson: dateToJson, fromJson: jsonToDate)
          required this.date,
      @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
          required this.startDate,
      @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
          required this.endDate,
      required this.taskColor,
      required this.remind,
      required this.repeat});

  @override
  final int id;
  @override
  final String title;
  @override
  final String note;
  @override
  final bool isCompleted;
  @override
  @JsonKey(toJson: dateToJson, fromJson: jsonToDate)
  final DateTime date;
  @override
  @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
  final TimeOfDay startDate;
  @override
  @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
  final TimeOfDay endDate;
  @override
  final TaskColor taskColor;
  @override
  final Remind remind;
  @override
  final Repeat repeat;

  @override
  String toString() {
    return 'Task(id: $id, title: $title, note: $note, isCompleted: $isCompleted, date: $date, startDate: $startDate, endDate: $endDate, taskColor: $taskColor, remind: $remind, repeat: $repeat)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Task &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality().equals(other.note, note) &&
            const DeepCollectionEquality()
                .equals(other.isCompleted, isCompleted) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.taskColor, taskColor) &&
            const DeepCollectionEquality().equals(other.remind, remind) &&
            const DeepCollectionEquality().equals(other.repeat, repeat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(note),
      const DeepCollectionEquality().hash(isCompleted),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(taskColor),
      const DeepCollectionEquality().hash(remind),
      const DeepCollectionEquality().hash(repeat));

  @JsonKey(ignore: true)
  @override
  _$$_TaskCopyWith<_$_Task> get copyWith =>
      __$$_TaskCopyWithImpl<_$_Task>(this, _$identity);
}

abstract class _Task implements Task {
  factory _Task(
      {required final int id,
      required final String title,
      required final String note,
      required final bool isCompleted,
      @JsonKey(toJson: dateToJson, fromJson: jsonToDate)
          required final DateTime date,
      @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
          required final TimeOfDay startDate,
      @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
          required final TimeOfDay endDate,
      required final TaskColor taskColor,
      required final Remind remind,
      required final Repeat repeat}) = _$_Task;

  @override
  int get id;
  @override
  String get title;
  @override
  String get note;
  @override
  bool get isCompleted;
  @override
  @JsonKey(toJson: dateToJson, fromJson: jsonToDate)
  DateTime get date;
  @override
  @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
  TimeOfDay get startDate;
  @override
  @JsonKey(toJson: timeOfDayToJson, fromJson: jsonToTimeOfDay)
  TimeOfDay get endDate;
  @override
  TaskColor get taskColor;
  @override
  Remind get remind;
  @override
  Repeat get repeat;
  @override
  @JsonKey(ignore: true)
  _$$_TaskCopyWith<_$_Task> get copyWith => throw _privateConstructorUsedError;
}
