// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pendistribusian.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Pendistribusian _$$_PendistribusianFromJson(Map<String, dynamic> json) =>
    _$_Pendistribusian(
      json['id'] as int,
      json['kategori'] as String,
      json['nominal'] as int,
      json['tanggal'] as String,
      json['tempat'] as String,
      json['bentuk'] as String,
      json['penanggung_jawab_id'] as int,
      json['verifikasi_status'] as int,
    );

Map<String, dynamic> _$$_PendistribusianToJson(_$_Pendistribusian instance) =>
    <String, dynamic>{
      'id': instance.id,
      'kategori': instance.kategori,
      'nominal': instance.nominal,
      'tanggal': instance.tanggal,
      'tempat': instance.tempat,
      'bentuk': instance.bentuk,
      'penanggung_jawab_id': instance.penanggungJawabId,
      'verifikasi_status': instance.verifikasiStatus,
    };
