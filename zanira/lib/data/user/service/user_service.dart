import 'package:zanira/data/user/entity/user.dart';

abstract class UserServices {
  Future<bool> login(String noHp, String password);
  Future<bool> signUpAdmin(
      String nama, String noHp, String email, String password);
  Future<bool> signUpMember(
      String nama, String noHp, String email, String password);
  Future<User?> getUser();
}
