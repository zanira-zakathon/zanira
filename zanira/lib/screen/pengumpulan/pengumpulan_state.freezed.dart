// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pengumpulan_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PengumpulanState _$PengumpulanStateFromJson(Map<String, dynamic> json) {
  return _PengumpulanState.fromJson(json);
}

/// @nodoc
mixin _$PengumpulanState {
  double get terkumpul => throw _privateConstructorUsedError;
  String get monthFilter => throw _privateConstructorUsedError;
  String get yearFilter => throw _privateConstructorUsedError;
  String get kategori => throw _privateConstructorUsedError;
  List<MyBarChart> get yearlyNominal => throw _privateConstructorUsedError;
  List<Pengumpulan> get monthlyList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PengumpulanStateCopyWith<PengumpulanState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PengumpulanStateCopyWith<$Res> {
  factory $PengumpulanStateCopyWith(
          PengumpulanState value, $Res Function(PengumpulanState) then) =
      _$PengumpulanStateCopyWithImpl<$Res, PengumpulanState>;
  @useResult
  $Res call(
      {double terkumpul,
      String monthFilter,
      String yearFilter,
      String kategori,
      List<MyBarChart> yearlyNominal,
      List<Pengumpulan> monthlyList});
}

/// @nodoc
class _$PengumpulanStateCopyWithImpl<$Res, $Val extends PengumpulanState>
    implements $PengumpulanStateCopyWith<$Res> {
  _$PengumpulanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terkumpul = null,
    Object? monthFilter = null,
    Object? yearFilter = null,
    Object? kategori = null,
    Object? yearlyNominal = null,
    Object? monthlyList = null,
  }) {
    return _then(_value.copyWith(
      terkumpul: null == terkumpul
          ? _value.terkumpul
          : terkumpul // ignore: cast_nullable_to_non_nullable
              as double,
      monthFilter: null == monthFilter
          ? _value.monthFilter
          : monthFilter // ignore: cast_nullable_to_non_nullable
              as String,
      yearFilter: null == yearFilter
          ? _value.yearFilter
          : yearFilter // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      yearlyNominal: null == yearlyNominal
          ? _value.yearlyNominal
          : yearlyNominal // ignore: cast_nullable_to_non_nullable
              as List<MyBarChart>,
      monthlyList: null == monthlyList
          ? _value.monthlyList
          : monthlyList // ignore: cast_nullable_to_non_nullable
              as List<Pengumpulan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PengumpulanStateCopyWith<$Res>
    implements $PengumpulanStateCopyWith<$Res> {
  factory _$$_PengumpulanStateCopyWith(
          _$_PengumpulanState value, $Res Function(_$_PengumpulanState) then) =
      __$$_PengumpulanStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double terkumpul,
      String monthFilter,
      String yearFilter,
      String kategori,
      List<MyBarChart> yearlyNominal,
      List<Pengumpulan> monthlyList});
}

/// @nodoc
class __$$_PengumpulanStateCopyWithImpl<$Res>
    extends _$PengumpulanStateCopyWithImpl<$Res, _$_PengumpulanState>
    implements _$$_PengumpulanStateCopyWith<$Res> {
  __$$_PengumpulanStateCopyWithImpl(
      _$_PengumpulanState _value, $Res Function(_$_PengumpulanState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terkumpul = null,
    Object? monthFilter = null,
    Object? yearFilter = null,
    Object? kategori = null,
    Object? yearlyNominal = null,
    Object? monthlyList = null,
  }) {
    return _then(_$_PengumpulanState(
      terkumpul: null == terkumpul
          ? _value.terkumpul
          : terkumpul // ignore: cast_nullable_to_non_nullable
              as double,
      monthFilter: null == monthFilter
          ? _value.monthFilter
          : monthFilter // ignore: cast_nullable_to_non_nullable
              as String,
      yearFilter: null == yearFilter
          ? _value.yearFilter
          : yearFilter // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      yearlyNominal: null == yearlyNominal
          ? _value._yearlyNominal
          : yearlyNominal // ignore: cast_nullable_to_non_nullable
              as List<MyBarChart>,
      monthlyList: null == monthlyList
          ? _value._monthlyList
          : monthlyList // ignore: cast_nullable_to_non_nullable
              as List<Pengumpulan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PengumpulanState implements _PengumpulanState {
  const _$_PengumpulanState(
      {this.terkumpul = 0,
      required this.monthFilter,
      required this.yearFilter,
      this.kategori = FITRAH,
      final List<MyBarChart> yearlyNominal = const [],
      final List<Pengumpulan> monthlyList = const []})
      : _yearlyNominal = yearlyNominal,
        _monthlyList = monthlyList;

  factory _$_PengumpulanState.fromJson(Map<String, dynamic> json) =>
      _$$_PengumpulanStateFromJson(json);

  @override
  @JsonKey()
  final double terkumpul;
  @override
  final String monthFilter;
  @override
  final String yearFilter;
  @override
  @JsonKey()
  final String kategori;
  final List<MyBarChart> _yearlyNominal;
  @override
  @JsonKey()
  List<MyBarChart> get yearlyNominal {
    if (_yearlyNominal is EqualUnmodifiableListView) return _yearlyNominal;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_yearlyNominal);
  }

  final List<Pengumpulan> _monthlyList;
  @override
  @JsonKey()
  List<Pengumpulan> get monthlyList {
    if (_monthlyList is EqualUnmodifiableListView) return _monthlyList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_monthlyList);
  }

  @override
  String toString() {
    return 'PengumpulanState(terkumpul: $terkumpul, monthFilter: $monthFilter, yearFilter: $yearFilter, kategori: $kategori, yearlyNominal: $yearlyNominal, monthlyList: $monthlyList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PengumpulanState &&
            (identical(other.terkumpul, terkumpul) ||
                other.terkumpul == terkumpul) &&
            (identical(other.monthFilter, monthFilter) ||
                other.monthFilter == monthFilter) &&
            (identical(other.yearFilter, yearFilter) ||
                other.yearFilter == yearFilter) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            const DeepCollectionEquality()
                .equals(other._yearlyNominal, _yearlyNominal) &&
            const DeepCollectionEquality()
                .equals(other._monthlyList, _monthlyList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      terkumpul,
      monthFilter,
      yearFilter,
      kategori,
      const DeepCollectionEquality().hash(_yearlyNominal),
      const DeepCollectionEquality().hash(_monthlyList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PengumpulanStateCopyWith<_$_PengumpulanState> get copyWith =>
      __$$_PengumpulanStateCopyWithImpl<_$_PengumpulanState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PengumpulanStateToJson(
      this,
    );
  }
}

abstract class _PengumpulanState implements PengumpulanState {
  const factory _PengumpulanState(
      {final double terkumpul,
      required final String monthFilter,
      required final String yearFilter,
      final String kategori,
      final List<MyBarChart> yearlyNominal,
      final List<Pengumpulan> monthlyList}) = _$_PengumpulanState;

  factory _PengumpulanState.fromJson(Map<String, dynamic> json) =
      _$_PengumpulanState.fromJson;

  @override
  double get terkumpul;
  @override
  String get monthFilter;
  @override
  String get yearFilter;
  @override
  String get kategori;
  @override
  List<MyBarChart> get yearlyNominal;
  @override
  List<Pengumpulan> get monthlyList;
  @override
  @JsonKey(ignore: true)
  _$$_PengumpulanStateCopyWith<_$_PengumpulanState> get copyWith =>
      throw _privateConstructorUsedError;
}
