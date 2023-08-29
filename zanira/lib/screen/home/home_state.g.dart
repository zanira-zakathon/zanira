// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeState _$$_HomeStateFromJson(Map<String, dynamic> json) => _$_HomeState(
      user: json['user'] == null
          ? const User(0, '', '', '', '', '', 0, '')
          : User.fromJson(json['user'] as Map<String, dynamic>),
      pendistribusianPlanList: (json['pendistribusianPlanList']
                  as List<dynamic>?)
              ?.map((e) => Pendistribusian.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      announcementList: (json['announcementList'] as List<dynamic>?)
              ?.map((e) => Announcement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_HomeStateToJson(_$_HomeState instance) =>
    <String, dynamic>{
      'user': instance.user,
      'pendistribusianPlanList': instance.pendistribusianPlanList,
      'announcementList': instance.announcementList,
    };
