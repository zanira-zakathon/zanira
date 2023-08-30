import 'package:get_it/get_it.dart';
import 'package:zanira/data/announcement/service/announcement_services.dart';
import 'package:zanira/data/announcement/service/announcement_services_impl.dart';
import 'package:zanira/data/pendistribusian/service/pendistribusian_service.dart';
import 'package:zanira/data/pendistribusian/service/pendistribusian_service_impl.dart';

import 'package:zanira/data/pengumpulan/service/pengumpulan_service.dart';
import 'package:zanira/data/pengumpulan/service/pengumpulan_service_impl.dart';
import 'package:zanira/data/user/service/user_service.dart';
import 'package:zanira/data/user/service/user_service_impl.dart';
import 'package:zanira/data/yayasan/service/yayasan_service.dart';
import 'package:zanira/data/yayasan/service/yayasan_service_impl.dart';

final getIt = GetIt.instance;
Future<void> setup() async {
  /// Pendistribusian Dependency

  getIt.registerSingleton<PendistribusianServices>(
      PendistribusianServicesImpl(),
      instanceName: (PendistribusianServicesImpl).toString());

  getIt.registerSingleton<PengumpulanServices>(
      PengumpulanServicesImpl(),
      instanceName: (PengumpulanServicesImpl).toString());

  // User Dependency
  getIt.registerSingleton<UserServices>(UserServicesImpl(),
      instanceName: (UserServicesImpl).toString());

  getIt.registerSingleton<YayasanServices>(YayasanServicesImpl(),
      instanceName: (YayasanServicesImpl).toString());

  getIt.registerSingleton<AnnouncementServices>(AnnouncementServicesImpl(),
      instanceName: (AnnouncementServicesImpl).toString());
}
