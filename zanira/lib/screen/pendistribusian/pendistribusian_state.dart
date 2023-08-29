import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';
part 'pendistribusian_state.freezed.dart';
part 'pendistribusian_state.g.dart';

@freezed
class PendistribusianState with _$PendistribusianState{
  const factory PendistribusianState({
    @Default(0) double terdistribusi,
    required String monthFilter,
    @Default([]) List<Pendistribusian> pendistribusianList,
  })=_PendistribusianState;

  factory PendistribusianState.fromJson(Map<String, Object?>json)=>_$PendistribusianStateFromJson(json);
}

//to run the builder, write on terminal: flutter pub run build_runner build --delete-conflicting-outputs

