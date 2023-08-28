import 'package:freezed_annotation/freezed_annotation.dart';
part 'yayasan.freezed.dart';
part 'yayasan.g.dart';

@freezed
class Yayasan with _$Yayasan {
  const factory Yayasan(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address) = _Yayasan;

  factory Yayasan.fromJson(Map<String, dynamic> json) => _$YayasanFromJson(json);
}
