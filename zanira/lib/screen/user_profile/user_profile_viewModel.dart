import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/data/user/entity/user.dart';
import 'package:zanira/data/user/service/user_service.dart';
import 'package:zanira/data/user/service/user_service_impl.dart';
import 'package:zanira/dependency/dependency.dart';
import 'package:zanira/screen/user_profile/user_profile_state.dart';

final userProfileVMProvider =
    StateNotifierProvider<UserProfileViewModel, UserProfileState>(
        (ref) => UserProfileViewModel());

class UserProfileViewModel extends StateNotifier<UserProfileState> {
  UserProfileViewModel() : super(const UserProfileState());
  UserServices userServices =
      getIt<UserServices>(instanceName: (UserServicesImpl).toString());


  Future<void> getProfile() async {
    User? user = await userServices.getUser();
    if (user != null) {
      state = state.copyWith(user: user);
    }
  }

  Future<void> updateProfile(String name, String image, String email) async {
    // User? user = await updateUser(name, image, email);
    // if (user != null) {
    //   state = state.copyWith(user: user);
    // }
  }
}
