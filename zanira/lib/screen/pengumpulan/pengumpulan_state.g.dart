// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pengumpulan_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PengumpulanState _$$_PengumpulanStateFromJson(Map<String, dynamic> json) =>
    _$_PengumpulanState(
      terkumpul: (json['terkumpul'] as num?)?.toDouble() ?? 0,
      monthFilter: json['monthFilter'] as String,
      yearFilter: json['yearFilter'] as String,
      kategori: json['kategori'] as String? ?? FITRAH,
      yearlyNominal: (json['yearlyNominal'] as List<dynamic>?)
              ?.map((e) => MyBarChart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      monthlyList: (json['monthlyList'] as List<dynamic>?)
              ?.map((e) => Pengumpulan.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_PengumpulanStateToJson(_$_PengumpulanState instance) =>
    <String, dynamic>{
      'terkumpul': instance.terkumpul,
      'monthFilter': instance.monthFilter,
      'yearFilter': instance.yearFilter,
      'kategori': instance.kategori,
      'yearlyNominal': instance.yearlyNominal,
      'monthlyList': instance.monthlyList,
    };
