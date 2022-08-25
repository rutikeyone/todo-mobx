// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as int?,
      title: json['title'] as String,
      note: json['note'] as String,
      isCompleted: json['isCompleted'] as bool,
      date: jsonToDate(json['date']),
      startTime: jsonToTimeOfDay(json['startTime']),
      endTime: jsonToTimeOfDay(json['endTime']),
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'isCompleted': instance.isCompleted,
      'date': dateToJson(instance.date),
      'startTime': timeOfDayToJson(instance.startTime),
      'endTime': timeOfDayToJson(instance.endTime),
    };
