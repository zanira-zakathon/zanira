import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';

abstract class PendistribusianServices {
  Future<List<Pendistribusian>> getUnverifiedPendistribusian();
  Future<List<Pendistribusian>> getVerifiedPendistribusian(
      String month, String year);
  Future<void> createPendistribusian(String kategori, int nominal,
      DateTime tanggal, String bentuk, String tempat);
  Future<void> updatePendistribusianStatus(int id, String status);
}
