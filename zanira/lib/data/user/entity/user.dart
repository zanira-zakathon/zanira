import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'nama') String name,
      @JsonKey(name: 'no_hp') String noHp,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String role,
      @JsonKey(name: 'foundation_id') int foundationId,
      @JsonKey(name: 'token') String? token) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
