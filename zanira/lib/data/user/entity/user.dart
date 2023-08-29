import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'no_hp') String noHp,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String role,
      @JsonKey(name: 'yayasan_id') int foundationId) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

// class User{
//   int? id;
//   String? name;
//   String? image;
//   String? email;
//   String? token;

//   User({
//     this.id,
//     this.name,
//     this.image,
//     this.email,
//     this.token
//   });

//   //convert json data to user model
//   factory User.fromJson(Map<String, dynamic> json){
//     return User(
//       id: json['user']['id'],
//       name: json['user']['name'],
//       image: json['user']['image'],
//       email: json['user']['email'],
//       token: json['token']
//     );
//   }
// }