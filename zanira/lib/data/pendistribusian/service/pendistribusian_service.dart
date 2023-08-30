import 'package:zanira/data/barchart/mybarchart.dart';
import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';

abstract class PendistribusianServices {
  Future<List<Pendistribusian>> getUnverifiedPendistribusian();
  Future<List<Pendistribusian>> getVerifiedPendistribusian(
      String month, String year);
  Future<int> getPendistribusianTotal();
  Future<void> createPendistribusian(String kategori, int nominal,
      String tanggal, String bentuk, String tempat);
  Future<void> updatePendistribusianStatus(int id, String status);
  Future<List<MyBarChart>> getYearlyPendistribusian(String year);
}
