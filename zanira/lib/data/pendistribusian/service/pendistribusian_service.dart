import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';

abstract class PendistribusianServices {
  Future<List<Pendistribusian>> getAllPendistribusian();
}
