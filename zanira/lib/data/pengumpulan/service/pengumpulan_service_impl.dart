import 'package:zanira/data/pengumpulan/entity/pengumpulan.dart';
import 'package:zanira/data/pengumpulan/service/pengumpulan_service.dart';

class PengumpulanServicesImpl implements PengumpulanServices {
  final String pengumpulanPath = '/pengumpulan';

  @override
  Future<List<Pengumpulan>> getAllPengumpulan() async {
    return [];
  }
}
