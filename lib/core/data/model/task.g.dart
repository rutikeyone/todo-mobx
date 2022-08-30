// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as int?,
      title: json['title'] as String,
      note: json['note'] as String,
      isCompleted: CustomSerializer.jsonToBool(json['isCompleted']),
      date: CustomSerializer.jsonToDate(json['date']),
      startTime: CustomSerializer.jsonToTimeOfDay(json['startTime']),
      endTime: CustomSerializer.jsonToTimeOfDay(json['endTime']),
      taskColor: CustomSerializer.jsonToTaskColor(json['taskColor']),
      remind: CustomSerializer.jsonToRemind(json['remind']),
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'note': instance.note,
      'isCompleted': CustomSerializer.boolToInt(instance.isCompleted),
      'date': CustomSerializer.dateToJson(instance.date),
      'startTime': CustomSerializer.timeOfDayToJson(instance.startTime),
      'endTime': CustomSerializer.timeOfDayToJson(instance.endTime),
      'taskColor': CustomSerializer.taskColorToJson(instance.taskColor),
      'remind': CustomSerializer.remindToJson(instance.remind),
    };
