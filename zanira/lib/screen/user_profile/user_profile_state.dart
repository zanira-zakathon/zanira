import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zanira/data/user/entity/user.dart';
part 'user_profile_state.freezed.dart';
part 'user_profile_state.g.dart';

@freezed
class UserProfileState with _$UserProfileState {
  const factory UserProfileState(
      {@Default(User(0, '', '', '', '', '', 0, '')) User user}) = _UserProfileState;

  factory UserProfileState.fromJson(Map<String, Object?> json) =>
      _$UserProfileStateFromJson(json);
}
