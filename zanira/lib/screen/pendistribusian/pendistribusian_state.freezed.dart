// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pendistribusian_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PendistribusianState _$PendistribusianStateFromJson(Map<String, dynamic> json) {
  return _PendistribusianState.fromJson(json);
}

/// @nodoc
mixin _$PendistribusianState {
  double get terdistribusi => throw _privateConstructorUsedError;
  String get monthFilter => throw _privateConstructorUsedError;
  List<Pendistribusian> get pendistribusianList =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PendistribusianStateCopyWith<PendistribusianState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PendistribusianStateCopyWith<$Res> {
  factory $PendistribusianStateCopyWith(PendistribusianState value,
          $Res Function(PendistribusianState) then) =
      _$PendistribusianStateCopyWithImpl<$Res, PendistribusianState>;
  @useResult
  $Res call(
      {double terdistribusi,
      String monthFilter,
      List<Pendistribusian> pendistribusianList});
}

/// @nodoc
class _$PendistribusianStateCopyWithImpl<$Res,
        $Val extends PendistribusianState>
    implements $PendistribusianStateCopyWith<$Res> {
  _$PendistribusianStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terdistribusi = null,
    Object? monthFilter = null,
    Object? pendistribusianList = null,
  }) {
    return _then(_value.copyWith(
      terdistribusi: null == terdistribusi
          ? _value.terdistribusi
          : terdistribusi // ignore: cast_nullable_to_non_nullable
              as double,
      monthFilter: null == monthFilter
          ? _value.monthFilter
          : monthFilter // ignore: cast_nullable_to_non_nullable
              as String,
      pendistribusianList: null == pendistribusianList
          ? _value.pendistribusianList
          : pendistribusianList // ignore: cast_nullable_to_non_nullable
              as List<Pendistribusian>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PendistribusianStateCopyWith<$Res>
    implements $PendistribusianStateCopyWith<$Res> {
  factory _$$_PendistribusianStateCopyWith(_$_PendistribusianState value,
          $Res Function(_$_PendistribusianState) then) =
      __$$_PendistribusianStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double terdistribusi,
      String monthFilter,
      List<Pendistribusian> pendistribusianList});
}

/// @nodoc
class __$$_PendistribusianStateCopyWithImpl<$Res>
    extends _$PendistribusianStateCopyWithImpl<$Res, _$_PendistribusianState>
    implements _$$_PendistribusianStateCopyWith<$Res> {
  __$$_PendistribusianStateCopyWithImpl(_$_PendistribusianState _value,
      $Res Function(_$_PendistribusianState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? terdistribusi = null,
    Object? monthFilter = null,
    Object? pendistribusianList = null,
  }) {
    return _then(_$_PendistribusianState(
      terdistribusi: null == terdistribusi
          ? _value.terdistribusi
          : terdistribusi // ignore: cast_nullable_to_non_nullable
              as double,
      monthFilter: null == monthFilter
          ? _value.monthFilter
          : monthFilter // ignore: cast_nullable_to_non_nullable
              as String,
      pendistribusianList: null == pendistribusianList
          ? _value._pendistribusianList
          : pendistribusianList // ignore: cast_nullable_to_non_nullable
              as List<Pendistribusian>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PendistribusianState implements _PendistribusianState {
  const _$_PendistribusianState(
      {this.terdistribusi = 0,
      required this.monthFilter,
      final List<Pendistribusian> pendistribusianList = const []})
      : _pendistribusianList = pendistribusianList;

  factory _$_PendistribusianState.fromJson(Map<String, dynamic> json) =>
      _$$_PendistribusianStateFromJson(json);

  @override
  @JsonKey()
  final double terdistribusi;
  @override
  final String monthFilter;
  final List<Pendistribusian> _pendistribusianList;
  @override
  @JsonKey()
  List<Pendistribusian> get pendistribusianList {
    if (_pendistribusianList is EqualUnmodifiableListView)
      return _pendistribusianList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pendistribusianList);
  }

  @override
  String toString() {
    return 'PendistribusianState(terdistribusi: $terdistribusi, monthFilter: $monthFilter, pendistribusianList: $pendistribusianList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PendistribusianState &&
            (identical(other.terdistribusi, terdistribusi) ||
                other.terdistribusi == terdistribusi) &&
            (identical(other.monthFilter, monthFilter) ||
                other.monthFilter == monthFilter) &&
            const DeepCollectionEquality()
                .equals(other._pendistribusianList, _pendistribusianList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, terdistribusi, monthFilter,
      const DeepCollectionEquality().hash(_pendistribusianList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PendistribusianStateCopyWith<_$_PendistribusianState> get copyWith =>
      __$$_PendistribusianStateCopyWithImpl<_$_PendistribusianState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PendistribusianStateToJson(
      this,
    );
  }
}

abstract class _PendistribusianState implements PendistribusianState {
  const factory _PendistribusianState(
          {final double terdistribusi,
          required final String monthFilter,
          final List<Pendistribusian> pendistribusianList}) =
      _$_PendistribusianState;

  factory _PendistribusianState.fromJson(Map<String, dynamic> json) =
      _$_PendistribusianState.fromJson;

  @override
  double get terdistribusi;
  @override
  String get monthFilter;
  @override
  List<Pendistribusian> get pendistribusianList;
  @override
  @JsonKey(ignore: true)
  _$$_PendistribusianStateCopyWith<_$_PendistribusianState> get copyWith =>
      throw _privateConstructorUsedError;
}
