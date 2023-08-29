import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/data/announcement/entity/announcement.dart';
import 'package:zanira/data/announcement/service/announcement_services.dart';
import 'package:zanira/data/announcement/service/announcement_services_impl.dart';
import 'package:zanira/data/user/entity/user.dart';
import 'package:zanira/data/user/service/user_service.dart';
import 'package:zanira/data/user/service/user_service_impl.dart';

import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';
import 'package:zanira/data/pendistribusian/service/pendistribusian_service.dart';
import 'package:zanira/data/pendistribusian/service/pendistribusian_service_impl.dart';
import 'package:zanira/dependency/dependency.dart';
import 'package:zanira/screen/home/home_state.dart';
import 'package:zanira/screen/pendistribusian/pendistribusian_state.dart';

//viewmodel
final HomeVMProvider =
    StateNotifierProvider<HomeViewModel, HomeState>((ref) => HomeViewModel());

class HomeViewModel extends StateNotifier<HomeState> {
  HomeViewModel() : super(const HomeState());

  UserServices userServices =
      getIt<UserServices>(instanceName: (UserServicesImpl).toString());

  AnnouncementServices announcementServices = getIt<AnnouncementServices>(
      instanceName: (AnnouncementServicesImpl).toString());

  PendistribusianServices pendistribusianServices =
      getIt<PendistribusianServices>(
          instanceName: (PendistribusianServicesImpl).toString());

  Future<void> updateAllData() async {
    User user =
        await userServices.getUser() ?? User(0, '', '', '', '', '', 0, '');
    List<Announcement> announcementList =
        await announcementServices.getAnnouncements();
    List<Pendistribusian> pendistribusianPlanList =
        await pendistribusianServices.getUnverifiedPendistribusian();
    //update the state
    state = state.copyWith(
        user: user,
        announcementList: announcementList,
        pendistribusianPlanList: pendistribusianPlanList);
  }

  Future<void> updateDistributionStatus(int id, String status) async {
    pendistribusianServices.updatePendistribusianStatus(id, status);
  }
}
