// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_hp')
  String get noHp => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String? get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'email')
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'role')
  String get role => throw _privateConstructorUsedError;
  @JsonKey(name: 'foundation_id')
  int get foundationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'token')
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'nama') String name,
      @JsonKey(name: 'no_hp') String noHp,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String role,
      @JsonKey(name: 'foundation_id') int foundationId,
      @JsonKey(name: 'token') String? token});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? noHp = null,
    Object? image = freezed,
    Object? email = freezed,
    Object? role = null,
    Object? foundationId = null,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      noHp: null == noHp
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      foundationId: null == foundationId
          ? _value.foundationId
          : foundationId // ignore: cast_nullable_to_non_nullable
              as int,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'nama') String name,
      @JsonKey(name: 'no_hp') String noHp,
      @JsonKey(name: 'image') String? image,
      @JsonKey(name: 'email') String? email,
      @JsonKey(name: 'role') String role,
      @JsonKey(name: 'foundation_id') int foundationId,
      @JsonKey(name: 'token') String? token});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? noHp = null,
    Object? image = freezed,
    Object? email = freezed,
    Object? role = null,
    Object? foundationId = null,
    Object? token = freezed,
  }) {
    return _then(_$_User(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == noHp
          ? _value.noHp
          : noHp // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      null == foundationId
          ? _value.foundationId
          : foundationId // ignore: cast_nullable_to_non_nullable
              as int,
      freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'nama') this.name,
      @JsonKey(name: 'no_hp') this.noHp,
      @JsonKey(name: 'image') this.image,
      @JsonKey(name: 'email') this.email,
      @JsonKey(name: 'role') this.role,
      @JsonKey(name: 'foundation_id') this.foundationId,
      @JsonKey(name: 'token') this.token);

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'nama')
  final String name;
  @override
  @JsonKey(name: 'no_hp')
  final String noHp;
  @override
  @JsonKey(name: 'image')
  final String? image;
  @override
  @JsonKey(name: 'email')
  final String? email;
  @override
  @JsonKey(name: 'role')
  final String role;
  @override
  @JsonKey(name: 'foundation_id')
  final int foundationId;
  @override
  @JsonKey(name: 'token')
  final String? token;

  @override
  String toString() {
    return 'User(id: $id, name: $name, noHp: $noHp, image: $image, email: $email, role: $role, foundationId: $foundationId, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.noHp, noHp) || other.noHp == noHp) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.foundationId, foundationId) ||
                other.foundationId == foundationId) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, noHp, image, email, role, foundationId, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      @JsonKey(name: 'id') final int id,
      @JsonKey(name: 'nama') final String name,
      @JsonKey(name: 'no_hp') final String noHp,
      @JsonKey(name: 'image') final String? image,
      @JsonKey(name: 'email') final String? email,
      @JsonKey(name: 'role') final String role,
      @JsonKey(name: 'foundation_id') final int foundationId,
      @JsonKey(name: 'token') final String? token) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'nama')
  String get name;
  @override
  @JsonKey(name: 'no_hp')
  String get noHp;
  @override
  @JsonKey(name: 'image')
  String? get image;
  @override
  @JsonKey(name: 'email')
  String? get email;
  @override
  @JsonKey(name: 'role')
  String get role;
  @override
  @JsonKey(name: 'foundation_id')
  int get foundationId;
  @override
  @JsonKey(name: 'token')
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
