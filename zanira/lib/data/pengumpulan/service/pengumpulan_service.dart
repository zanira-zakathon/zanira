import 'package:zanira/data/barchart/mybarchart.dart';
import 'package:zanira/data/pengumpulan/entity/pengumpulan.dart';

abstract class PengumpulanServices {
  Future<List<Pengumpulan>> pengumpulanList(String month, String year);
  Future<void> createPengumpulan(String kategori, int nominal, String tanggal,
      String bentuk, String nama_muzakki, String no_muzakki, String tujuan, int tanggungan);
  Future<int> getPengumpulanTotal();
  Future<List<MyBarChart>> getYearlyPengumpulan(String year);
}
