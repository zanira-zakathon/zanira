import 'package:freezed_annotation/freezed_annotation.dart';
part 'mybarchart.freezed.dart';
part 'mybarchart.g.dart';

@freezed
class MyBarChart with _$MyBarChart {
  const factory MyBarChart(
          @JsonKey(name: 'nominal') String nominal,
          @JsonKey(name: 'month') int month,
          )=_MyBarChart;

  factory MyBarChart.fromJson(Map<String, dynamic> json) =>
      _$MyBarChartFromJson(json);
}
