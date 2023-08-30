// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pengumpulan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Pengumpulan _$PengumpulanFromJson(Map<String, dynamic> json) {
  return _Pengumpulan.fromJson(json);
}

/// @nodoc
mixin _$Pengumpulan {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'kategori')
  String get kategori => throw _privateConstructorUsedError;
  @JsonKey(name: 'nominal')
  int get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: 'tanggal')
  String get tanggal => throw _privateConstructorUsedError;
  @JsonKey(name: 'tujuan')
  String? get tujuan => throw _privateConstructorUsedError;
  @JsonKey(name: 'bentuk')
  String get bentuk => throw _privateConstructorUsedError;
  @JsonKey(name: 'penanggung_jawab_id')
  int get penanggungJawabId => throw _privateConstructorUsedError;
  @JsonKey(name: 'nama_muzakki')
  String get namaMuzakki => throw _privateConstructorUsedError;
  @JsonKey(name: 'no_muzakki')
  String get noMuzakki => throw _privateConstructorUsedError;
  @JsonKey(name: 'tanggungan')
  int get tanggungan => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PengumpulanCopyWith<Pengumpulan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PengumpulanCopyWith<$Res> {
  factory $PengumpulanCopyWith(
          Pengumpulan value, $Res Function(Pengumpulan) then) =
      _$PengumpulanCopyWithImpl<$Res, Pengumpulan>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'kategori') String kategori,
      @JsonKey(name: 'nominal') int nominal,
      @JsonKey(name: 'tanggal') String tanggal,
      @JsonKey(name: 'tujuan') String? tujuan,
      @JsonKey(name: 'bentuk') String bentuk,
      @JsonKey(name: 'penanggung_jawab_id') int penanggungJawabId,
      @JsonKey(name: 'nama_muzakki') String namaMuzakki,
      @JsonKey(name: 'no_muzakki') String noMuzakki,
      @JsonKey(name: 'tanggungan') int tanggungan});
}

/// @nodoc
class _$PengumpulanCopyWithImpl<$Res, $Val extends Pengumpulan>
    implements $PengumpulanCopyWith<$Res> {
  _$PengumpulanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kategori = null,
    Object? nominal = null,
    Object? tanggal = null,
    Object? tujuan = freezed,
    Object? bentuk = null,
    Object? penanggungJawabId = null,
    Object? namaMuzakki = null,
    Object? noMuzakki = null,
    Object? tanggungan = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
      tanggal: null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String,
      tujuan: freezed == tujuan
          ? _value.tujuan
          : tujuan // ignore: cast_nullable_to_non_nullable
              as String?,
      bentuk: null == bentuk
          ? _value.bentuk
          : bentuk // ignore: cast_nullable_to_non_nullable
              as String,
      penanggungJawabId: null == penanggungJawabId
          ? _value.penanggungJawabId
          : penanggungJawabId // ignore: cast_nullable_to_non_nullable
              as int,
      namaMuzakki: null == namaMuzakki
          ? _value.namaMuzakki
          : namaMuzakki // ignore: cast_nullable_to_non_nullable
              as String,
      noMuzakki: null == noMuzakki
          ? _value.noMuzakki
          : noMuzakki // ignore: cast_nullable_to_non_nullable
              as String,
      tanggungan: null == tanggungan
          ? _value.tanggungan
          : tanggungan // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PengumpulanCopyWith<$Res>
    implements $PengumpulanCopyWith<$Res> {
  factory _$$_PengumpulanCopyWith(
          _$_Pengumpulan value, $Res Function(_$_Pengumpulan) then) =
      __$$_PengumpulanCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'kategori') String kategori,
      @JsonKey(name: 'nominal') int nominal,
      @JsonKey(name: 'tanggal') String tanggal,
      @JsonKey(name: 'tujuan') String? tujuan,
      @JsonKey(name: 'bentuk') String bentuk,
      @JsonKey(name: 'penanggung_jawab_id') int penanggungJawabId,
      @JsonKey(name: 'nama_muzakki') String namaMuzakki,
      @JsonKey(name: 'no_muzakki') String noMuzakki,
      @JsonKey(name: 'tanggungan') int tanggungan});
}

/// @nodoc
class __$$_PengumpulanCopyWithImpl<$Res>
    extends _$PengumpulanCopyWithImpl<$Res, _$_Pengumpulan>
    implements _$$_PengumpulanCopyWith<$Res> {
  __$$_PengumpulanCopyWithImpl(
      _$_Pengumpulan _value, $Res Function(_$_Pengumpulan) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? kategori = null,
    Object? nominal = null,
    Object? tanggal = null,
    Object? tujuan = freezed,
    Object? bentuk = null,
    Object? penanggungJawabId = null,
    Object? namaMuzakki = null,
    Object? noMuzakki = null,
    Object? tanggungan = null,
  }) {
    return _then(_$_Pengumpulan(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as int,
      null == tanggal
          ? _value.tanggal
          : tanggal // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == tujuan
          ? _value.tujuan
          : tujuan // ignore: cast_nullable_to_non_nullable
              as String?,
      null == bentuk
          ? _value.bentuk
          : bentuk // ignore: cast_nullable_to_non_nullable
              as String,
      null == penanggungJawabId
          ? _value.penanggungJawabId
          : penanggungJawabId // ignore: cast_nullable_to_non_nullable
              as int,
      null == namaMuzakki
          ? _value.namaMuzakki
          : namaMuzakki // ignore: cast_nullable_to_non_nullable
              as String,
      null == noMuzakki
          ? _value.noMuzakki
          : noMuzakki // ignore: cast_nullable_to_non_nullable
              as String,
      null == tanggungan
          ? _value.tanggungan
          : tanggungan // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Pengumpulan implements _Pengumpulan {
  const _$_Pengumpulan(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'kategori') this.kategori,
      @JsonKey(name: 'nominal') this.nominal,
      @JsonKey(name: 'tanggal') this.tanggal,
      @JsonKey(name: 'tujuan') this.tujuan,
      @JsonKey(name: 'bentuk') this.bentuk,
      @JsonKey(name: 'penanggung_jawab_id') this.penanggungJawabId,
      @JsonKey(name: 'nama_muzakki') this.namaMuzakki,
      @JsonKey(name: 'no_muzakki') this.noMuzakki,
      @JsonKey(name: 'tanggungan') this.tanggungan);

  factory _$_Pengumpulan.fromJson(Map<String, dynamic> json) =>
      _$$_PengumpulanFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'kategori')
  final String kategori;
  @override
  @JsonKey(name: 'nominal')
  final int nominal;
  @override
  @JsonKey(name: 'tanggal')
  final String tanggal;
  @override
  @JsonKey(name: 'tujuan')
  final String? tujuan;
  @override
  @JsonKey(name: 'bentuk')
  final String bentuk;
  @override
  @JsonKey(name: 'penanggung_jawab_id')
  final int penanggungJawabId;
  @override
  @JsonKey(name: 'nama_muzakki')
  final String namaMuzakki;
  @override
  @JsonKey(name: 'no_muzakki')
  final String noMuzakki;
  @override
  @JsonKey(name: 'tanggungan')
  final int tanggungan;

  @override
  String toString() {
    return 'Pengumpulan(id: $id, kategori: $kategori, nominal: $nominal, tanggal: $tanggal, tujuan: $tujuan, bentuk: $bentuk, penanggungJawabId: $penanggungJawabId, namaMuzakki: $namaMuzakki, noMuzakki: $noMuzakki, tanggungan: $tanggungan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Pengumpulan &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.tanggal, tanggal) || other.tanggal == tanggal) &&
            (identical(other.tujuan, tujuan) || other.tujuan == tujuan) &&
            (identical(other.bentuk, bentuk) || other.bentuk == bentuk) &&
            (identical(other.penanggungJawabId, penanggungJawabId) ||
                other.penanggungJawabId == penanggungJawabId) &&
            (identical(other.namaMuzakki, namaMuzakki) ||
                other.namaMuzakki == namaMuzakki) &&
            (identical(other.noMuzakki, noMuzakki) ||
                other.noMuzakki == noMuzakki) &&
            (identical(other.tanggungan, tanggungan) ||
                other.tanggungan == tanggungan));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, kategori, nominal, tanggal,
      tujuan, bentuk, penanggungJawabId, namaMuzakki, noMuzakki, tanggungan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PengumpulanCopyWith<_$_Pengumpulan> get copyWith =>
      __$$_PengumpulanCopyWithImpl<_$_Pengumpulan>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PengumpulanToJson(
      this,
    );
  }
}

abstract class _Pengumpulan implements Pengumpulan {
  const factory _Pengumpulan(
      @JsonKey(name: 'id') final int id,
      @JsonKey(name: 'kategori') final String kategori,
      @JsonKey(name: 'nominal') final int nominal,
      @JsonKey(name: 'tanggal') final String tanggal,
      @JsonKey(name: 'tujuan') final String? tujuan,
      @JsonKey(name: 'bentuk') final String bentuk,
      @JsonKey(name: 'penanggung_jawab_id') final int penanggungJawabId,
      @JsonKey(name: 'nama_muzakki') final String namaMuzakki,
      @JsonKey(name: 'no_muzakki') final String noMuzakki,
      @JsonKey(name: 'tanggungan') final int tanggungan) = _$_Pengumpulan;

  factory _Pengumpulan.fromJson(Map<String, dynamic> json) =
      _$_Pengumpulan.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id;
  @override
  @JsonKey(name: 'kategori')
  String get kategori;
  @override
  @JsonKey(name: 'nominal')
  int get nominal;
  @override
  @JsonKey(name: 'tanggal')
  String get tanggal;
  @override
  @JsonKey(name: 'tujuan')
  String? get tujuan;
  @override
  @JsonKey(name: 'bentuk')
  String get bentuk;
  @override
  @JsonKey(name: 'penanggung_jawab_id')
  int get penanggungJawabId;
  @override
  @JsonKey(name: 'nama_muzakki')
  String get namaMuzakki;
  @override
  @JsonKey(name: 'no_muzakki')
  String get noMuzakki;
  @override
  @JsonKey(name: 'tanggungan')
  int get tanggungan;
  @override
  @JsonKey(ignore: true)
  _$$_PengumpulanCopyWith<_$_Pengumpulan> get copyWith =>
      throw _privateConstructorUsedError;
}
