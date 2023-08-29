// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pendistribusian_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PendistribusianState _$$_PendistribusianStateFromJson(
        Map<String, dynamic> json) =>
    _$_PendistribusianState(
      terdistribusi: (json['terdistribusi'] as num?)?.toDouble() ?? 0,
      monthFilter: json['monthFilter'] as String,
      pendistribusianList: (json['pendistribusianList'] as List<dynamic>?)
              ?.map((e) => Pendistribusian.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PendistribusianStateToJson(
        _$_PendistribusianState instance) =>
    <String, dynamic>{
      'terdistribusi': instance.terdistribusi,
      'monthFilter': instance.monthFilter,
      'pendistribusianList': instance.pendistribusianList,
    };
