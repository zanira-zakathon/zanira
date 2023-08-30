// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mybarchart.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyBarChart _$MyBarChartFromJson(Map<String, dynamic> json) {
  return _MyBarChart.fromJson(json);
}

/// @nodoc
mixin _$MyBarChart {
  @JsonKey(name: 'nominal')
  String get nominal => throw _privateConstructorUsedError;
  @JsonKey(name: 'month')
  int get month => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyBarChartCopyWith<MyBarChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyBarChartCopyWith<$Res> {
  factory $MyBarChartCopyWith(
          MyBarChart value, $Res Function(MyBarChart) then) =
      _$MyBarChartCopyWithImpl<$Res, MyBarChart>;
  @useResult
  $Res call(
      {@JsonKey(name: 'nominal') String nominal,
      @JsonKey(name: 'month') int month});
}

/// @nodoc
class _$MyBarChartCopyWithImpl<$Res, $Val extends MyBarChart>
    implements $MyBarChartCopyWith<$Res> {
  _$MyBarChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nominal = null,
    Object? month = null,
  }) {
    return _then(_value.copyWith(
      nominal: null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MyBarChartCopyWith<$Res>
    implements $MyBarChartCopyWith<$Res> {
  factory _$$_MyBarChartCopyWith(
          _$_MyBarChart value, $Res Function(_$_MyBarChart) then) =
      __$$_MyBarChartCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'nominal') String nominal,
      @JsonKey(name: 'month') int month});
}

/// @nodoc
class __$$_MyBarChartCopyWithImpl<$Res>
    extends _$MyBarChartCopyWithImpl<$Res, _$_MyBarChart>
    implements _$$_MyBarChartCopyWith<$Res> {
  __$$_MyBarChartCopyWithImpl(
      _$_MyBarChart _value, $Res Function(_$_MyBarChart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nominal = null,
    Object? month = null,
  }) {
    return _then(_$_MyBarChart(
      null == nominal
          ? _value.nominal
          : nominal // ignore: cast_nullable_to_non_nullable
              as String,
      null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyBarChart implements _MyBarChart {
  const _$_MyBarChart(@JsonKey(name: 'nominal') this.nominal,
      @JsonKey(name: 'month') this.month);

  factory _$_MyBarChart.fromJson(Map<String, dynamic> json) =>
      _$$_MyBarChartFromJson(json);

  @override
  @JsonKey(name: 'nominal')
  final String nominal;
  @override
  @JsonKey(name: 'month')
  final int month;

  @override
  String toString() {
    return 'MyBarChart(nominal: $nominal, month: $month)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MyBarChart &&
            (identical(other.nominal, nominal) || other.nominal == nominal) &&
            (identical(other.month, month) || other.month == month));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nominal, month);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MyBarChartCopyWith<_$_MyBarChart> get copyWith =>
      __$$_MyBarChartCopyWithImpl<_$_MyBarChart>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MyBarChartToJson(
      this,
    );
  }
}

abstract class _MyBarChart implements MyBarChart {
  const factory _MyBarChart(@JsonKey(name: 'nominal') final String nominal,
      @JsonKey(name: 'month') final int month) = _$_MyBarChart;

  factory _MyBarChart.fromJson(Map<String, dynamic> json) =
      _$_MyBarChart.fromJson;

  @override
  @JsonKey(name: 'nominal')
  String get nominal;
  @override
  @JsonKey(name: 'month')
  int get month;
  @override
  @JsonKey(ignore: true)
  _$$_MyBarChartCopyWith<_$_MyBarChart> get copyWith =>
      throw _privateConstructorUsedError;
}
