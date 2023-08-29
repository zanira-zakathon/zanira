// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      json['id'] as int,
      json['name'] as String,
      json['no_hp'] as String,
      json['email'] as String?,
      json['role'] as String,
      json['yayasan_id'] as int,
      json['token'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'no_hp': instance.noHp,
      'email': instance.email,
      'role': instance.role,
      'yayasan_id': instance.foundationId,
      'token': instance.token,
    };
