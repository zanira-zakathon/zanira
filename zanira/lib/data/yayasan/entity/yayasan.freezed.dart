// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'yayasan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Yayasan _$YayasanFromJson(Map<String, dynamic> json) {
  return _Yayasan.fromJson(json);
}

/// @nodoc
mixin _$Yayasan {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'address')
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YayasanCopyWith<Yayasan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YayasanCopyWith<$Res> {
  factory $YayasanCopyWith(Yayasan value, $Res Function(Yayasan) then) =
      _$YayasanCopyWithImpl<$Res, Yayasan>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address});
}

/// @nodoc
class _$YayasanCopyWithImpl<$Res, $Val extends Yayasan>
    implements $YayasanCopyWith<$Res> {
  _$YayasanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
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
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YayasanCopyWith<$Res> implements $YayasanCopyWith<$Res> {
  factory _$$_YayasanCopyWith(
          _$_Yayasan value, $Res Function(_$_Yayasan) then) =
      __$$_YayasanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'address') String address});
}

/// @nodoc
class __$$_YayasanCopyWithImpl<$Res>
    extends _$YayasanCopyWithImpl<$Res, _$_Yayasan>
    implements _$$_YayasanCopyWith<$Res> {
  __$$_YayasanCopyWithImpl(_$_Yayasan _value, $Res Function(_$_Yayasan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
  }) {
    return _then(_$_Yayasan(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Yayasan implements _Yayasan {
  const _$_Yayasan(@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name, @JsonKey(name: 'address') this.address);

  factory _$_Yayasan.fromJson(Map<String, dynamic> json) =>
      _$$_YayasanFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'address')
  final String address;

  @override
  String toString() {
    return 'Yayasan(id: $id, name: $name, address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Yayasan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YayasanCopyWith<_$_Yayasan> get copyWith =>
      __$$_YayasanCopyWithImpl<_$_Yayasan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YayasanToJson(
      this,
    );
  }
}

abstract class _Yayasan implements Yayasan {
  const factory _Yayasan(
      @JsonKey(name: 'id') final int id,
      @JsonKey(name: 'name') final String name,
      @JsonKey(name: 'address') final String address) = _$_Yayasan;

  factory _Yayasan.fromJson(Map<String, dynamic> json) = _$_Yayasan.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'address')
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_YayasanCopyWith<_$_Yayasan> get copyWith =>
      throw _privateConstructorUsedError;
}
