import 'package:zanira/data/pengumpulan/entity/pengumpulan.dart';

abstract class PengumpulanServices {
  Future<List<Pengumpulan>> getAllPengumpulan();
}
