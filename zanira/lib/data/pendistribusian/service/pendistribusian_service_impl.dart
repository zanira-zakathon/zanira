import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';
import 'package:zanira/data/pendistribusian/service/pendistribusian_service.dart';

class PendistribusianServicesImpl implements PendistribusianServices {
  final String pendistribusianPath = '/pendistribusian';

  @override
  Future<List<Pendistribusian>> getAllPendistribusian() async {
    return [];
  }
}
