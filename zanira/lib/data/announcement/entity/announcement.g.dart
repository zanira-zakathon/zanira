// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'announcement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Announcement _$$_AnnouncementFromJson(Map<String, dynamic> json) =>
    _$_Announcement(
      json['id'] as int,
      json['title'] as String,
      json['text'] as String,
      DateTime.parse(json['created_at'] as String),
      DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$_AnnouncementToJson(_$_Announcement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
