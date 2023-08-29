import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:zanira/api_service/api_service.dart';
import 'package:zanira/data/user/entity/user.dart';
import 'package:zanira/data/user/service/user_service.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zanira/dependency/constant.dart';

class UserServicesImpl extends APIService implements UserServices {
  @override
  Future<bool> login(String noHp, String password) async {
    try {
      final response = await client
          .post(Uri.parse(loginURL),
              headers: await requestHeaders(),
              body: json.encode({'no_hp': noHp, 'password': password}))
          .whenComplete(() => SmartDialog.dismiss());
print('here');
          
      switch (response.statusCode) {
        case 200:
          print('here');
          User user = User.fromJson(jsonDecode(response.body));
          print('here');
          
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setString('token', user.token ?? '');
          print('here');
          return true;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
    return false;
  }

  @override
  Future<bool> signUpAdmin(
      String nama, String noHp, String email, String password) async {
    try {
      final response = await client
          .post(Uri.parse(loginURL),
              headers: await requestHeaders(),
              body: json.encode(email.isEmpty
                  ? {
                      'nama': nama,
                      'no_hp': noHp,
                      'password': password,
                      'role': ADMIN
                    }
                  : {
                      'nama': nama,
                      'email': email,
                      'no_hp': noHp,
                      'password': password,
                      'role': ADMIN
                    }))
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          User user = User.fromJson(jsonDecode(response.body));
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setString('token', user.token ?? '');
          return true;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
    return false;
  }

  @override
  Future<bool> signUpMember(
      String nama, String noHp, String email, String password) async {
    try {
      final response = await client
          .post(Uri.parse(loginURL),
              headers: await requestHeaders(),
              body: json.encode(email.isEmpty
                  ? {
                      'nama': nama,
                      'no_hp': noHp,
                      'password': password,
                      'role': MEMBER
                    }
                  : {
                      'nama': nama,
                      'email': email,
                      'no_hp': noHp,
                      'password': password,
                      'role': MEMBER
                    }))
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          User user = User.fromJson(jsonDecode(response.body));
          SharedPreferences pref = await SharedPreferences.getInstance();
          pref.setString('token', user.token ?? '');
          return true;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
    return false;
  }

  @override
  Future<User?> getUser() async {
    try {
      final response = await client
          .get(Uri.parse(userURL), headers: await requestHeaders())
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          User user = User.fromJson(jsonDecode(response.body));
          return user;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
    return null;
  }
}
