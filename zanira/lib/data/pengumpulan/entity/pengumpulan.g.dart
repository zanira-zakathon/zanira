// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pengumpulan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pengumpulan _$$_PengumpulanFromJson(Map<String, dynamic> json) =>
    _$_Pengumpulan(
      json['id'] as int,
      json['kategori'] as String,
      json['nominal'] as int,
      json['tanggal'] as String,
      json['tujuan'] as String?,
      json['bentuk'] as String,
      json['penanggung_jawab_id'] as int,
      json['nama_muzakki'] as String,
      json['no_muzakki'] as String,
      json['tanggungan'] as int,
    );

Map<String, dynamic> _$$_PengumpulanToJson(_$_Pengumpulan instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kategori': instance.kategori,
      'nominal': instance.nominal,
      'tanggal': instance.tanggal,
      'tujuan': instance.tujuan,
      'bentuk': instance.bentuk,
      'penanggung_jawab_id': instance.penanggungJawabId,
      'nama_muzakki': instance.namaMuzakki,
      'no_muzakki': instance.noMuzakki,
      'tanggungan': instance.tanggungan,
    };
