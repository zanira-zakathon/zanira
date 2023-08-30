// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pendistribusian_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PendistribusianState _$$_PendistribusianStateFromJson(
        Map<String, dynamic> json) =>
    _$_PendistribusianState(
      terdistribusi: (json['terdistribusi'] as num?)?.toDouble() ?? 0,
      terkumpul: (json['terkumpul'] as num?)?.toDouble() ?? 0,
      monthFilter: json['monthFilter'] as String,
      yearFilter: json['yearFilter'] as String,
      kategori: json['kategori'] as String? ?? FITRAH,
      yearlyNominal: (json['yearlyNominal'] as List<dynamic>?)
              ?.map((e) => MyBarChart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      monthlyList: (json['monthlyList'] as List<dynamic>?)
              ?.map((e) => Pendistribusian.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PendistribusianStateToJson(
        _$_PendistribusianState instance) =>
    <String, dynamic>{
      'terdistribusi': instance.terdistribusi,
      'terkumpul': instance.terkumpul,
      'monthFilter': instance.monthFilter,
      'yearFilter': instance.yearFilter,
      'kategori': instance.kategori,
      'yearlyNominal': instance.yearlyNominal,
      'monthlyList': instance.monthlyList,
    };
