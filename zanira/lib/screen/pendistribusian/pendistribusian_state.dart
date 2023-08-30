import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';
import 'package:zanira/dependency/constant.dart';
import 'package:zanira/data/barchart/mybarchart.dart';
part 'pendistribusian_state.freezed.dart';
part 'pendistribusian_state.g.dart';

@freezed
class PendistribusianState with _$PendistribusianState {
  const factory PendistribusianState({
    @Default(0) double terdistribusi,
    @Default(0) double terkumpul,
    required String monthFilter,
    required String yearFilter,
    @Default(FITRAH) String kategori,
    @Default([]) List<MyBarChart> yearlyNominal,
    @Default([]) List<Pendistribusian> monthlyList,
  }) = _PendistribusianState;

  factory PendistribusianState.fromJson(Map<String, Object?> json) =>
      _$PendistribusianStateFromJson(json);
}

//to run the builder, write on terminal: flutter pub run build_runner build --delete-conflicting-outputs

