import 'package:zanira/data/user/entity/user.dart';

abstract class YayasanServices {
  Future<bool> signUpYayasan(
      String nama, String address, String token);
}
