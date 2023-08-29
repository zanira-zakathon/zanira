import 'package:zanira/data/pengumpulan/entity/pengumpulan.dart';

abstract class PengumpulanServices {
  Future<List<Pengumpulan>> pengumpulanList();
  Future<void> createPengumpulan(String kategori, int nominal, DateTime tanggal,
      String bentuk, String nama_muzakki, String no_muzakki, int tanggungan);
  Future<int> getPengumpulanTotal();
}
