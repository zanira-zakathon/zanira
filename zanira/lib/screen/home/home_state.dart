import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zanira/data/announcement/entity/announcement.dart';
import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';
import 'package:zanira/data/user/entity/user.dart';
part 'home_state.freezed.dart';
part 'home_state.g.dart';

@freezed
class HomeState with _$HomeState{
  const factory HomeState({
    @Default(User(0, '', '', '', '', '', 0, '')) User user,
    @Default([]) List<Pendistribusian> pendistribusianPlanList,
    @Default([]) List<Announcement>announcementList
  })=_HomeState;

  factory HomeState.fromJson(Map<String, Object?>json)=>_$HomeStateFromJson(json);
}

//to run the builder, write on terminal: flutter pub run build_runner build --delete-conflicting-outputs

