import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zanira/data/pengumpulan/entity/pengumpulan.dart';
part 'pengumpulan_state.freezed.dart';
part 'pengumpulan_state.g.dart';

@freezed
class PengumpulanState with _$PengumpulanState {
  const factory PengumpulanState({
    @Default(0) double terkumpul,
    required String monthFilter,
    @Default([]) List<Pengumpulan> pengumpulanList,
  }) = _PengumpulanState;

  factory PengumpulanState.fromJson(Map<String, Object?> json) =>
      _$PengumpulanStateFromJson(json);
}

//to run the builder, write on terminal: flutter pub run build_runner build --delete-conflicting-outputs

