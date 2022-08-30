// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notice _$$_NoticeFromJson(Map<String, dynamic> json) => _$_Notice(
      id: json['id'] as int,
      taskId: json['taskId'] as int,
      body: json['body'] as String,
      title: json['title'] as String,
      isRemind: json['isRemind'] as bool? ?? false,
    );

Map<String, dynamic> _$$_NoticeToJson(_$_Notice instance) => <String, dynamic>{
      'id': instance.id,
      'taskId': instance.taskId,
      'body': instance.body,
      'title': instance.title,
      'isRemind': instance.isRemind,
    };
