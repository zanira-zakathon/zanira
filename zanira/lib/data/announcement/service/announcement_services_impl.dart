import 'dart:convert';

import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:zanira/api_service/api_service.dart';
import 'package:zanira/data/announcement/entity/announcement.dart';
import 'package:zanira/data/announcement/service/announcement_services.dart';
import 'package:zanira/dependency/constant.dart';

class AnnouncementServicesImpl extends APIService
    implements AnnouncementServices {
  @override
  Future<void> createAnnouncement() async {}

  @override
  Future<List<Announcement>> getAnnouncements() async {
    try {
      final response = await client
          .get(Uri.parse(announcementURL), headers: await requestHeaders())
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          List<Announcement> list = (jsonDecode(response.body) as List)
        .map((item) => Announcement.fromJson(item))
        .toList();
    return list;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
    return [];
  }
}
