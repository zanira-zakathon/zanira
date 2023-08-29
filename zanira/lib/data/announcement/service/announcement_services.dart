import 'package:zanira/data/announcement/entity/announcement.dart';

abstract class AnnouncementServices {
  Future<List<Announcement>> getAnnouncements();
  Future<void> createAnnouncement();
}
