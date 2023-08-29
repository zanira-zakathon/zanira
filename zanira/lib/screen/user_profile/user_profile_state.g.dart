// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileState _$$_UserProfileStateFromJson(Map<String, dynamic> json) =>
    _$_UserProfileState(
      user: json['user'] == null
          ? const User(0, '', '', '', '', '', 0, '')
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileStateToJson(_$_UserProfileState instance) =>
    <String, dynamic>{
      'user': instance.user,
    };
