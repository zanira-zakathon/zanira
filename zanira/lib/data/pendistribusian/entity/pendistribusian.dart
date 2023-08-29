import 'package:freezed_annotation/freezed_annotation.dart';
part 'pendistribusian.freezed.dart';
part 'pendistribusian.g.dart';

//Tanggal, Kategori, Nominal, Detail, Button Delete and Edit
@freezed
class Pendistribusian with _$Pendistribusian {
  const factory Pendistribusian(
          @JsonKey(name: 'id') int id,
          @JsonKey(name: 'kategori') String kategori,
          @JsonKey(name: 'nominal') int nominal,
          @JsonKey(name: 'tanggal') String tanggal,
          @JsonKey(name: 'tempat') String tempat,
          @JsonKey(name: 'bentuk') String bentuk,
          @JsonKey(name: 'penanggung_jawab') String penanggungJawab,
          @JsonKey(name: 'verifikasi_status') int verifikasiStatus) =
      _Pendistribusian;

  factory Pendistribusian.fromJson(Map<String, dynamic> json) =>
      _$PendistribusianFromJson(json);
}
