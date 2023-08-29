import 'package:freezed_annotation/freezed_annotation.dart';
part 'pengumpulan.freezed.dart';
part 'pengumpulan.g.dart';

//Tanggal, Kategori, Nominal, Detail, Button Delete and Edit
@freezed
class Pengumpulan with _$Pengumpulan {
  const factory Pengumpulan(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'kategori') String kategori,
    @JsonKey(name: 'nominal') int nominal,
    @JsonKey(name: 'tanggal') String tanggal,
    @JsonKey(name: 'bentuk') String bentuk,
    @JsonKey(name: 'nama_muzakki') String namaMuzakki,
    @JsonKey(name: 'no_muzakki') String noMuzakki,
    @JsonKey(name: 'tanggungan') int tanggungan    
    ) = _Pengumpulan;

  factory Pengumpulan.fromJson(Map<String, dynamic> json) => _$PengumpulanFromJson(json);
}
