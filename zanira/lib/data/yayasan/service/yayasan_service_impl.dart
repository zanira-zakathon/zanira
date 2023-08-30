import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:zanira/api_service/api_service.dart';
import 'package:zanira/data/user/entity/user.dart';
import 'package:zanira/data/user/service/user_service.dart';
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zanira/data/yayasan/entity/yayasan.dart';
import 'package:zanira/data/yayasan/service/yayasan_service.dart';
import 'package:zanira/dependency/constant.dart';

class YayasanServicesImpl extends APIService implements YayasanServices {

  @override
  Future<bool> signUpYayasan(
      String nama, String address, String token) async {
    try {
      final response = await client
          .post(Uri.parse(foundationURL),
              headers: await requestHeaders(),
              body: json.encode({
                      'nama': nama,
                      'address': address,
                      'token': token,
                    }))
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          Yayasan yayasan = Yayasan.fromJson(jsonDecode(response.body));
          return true;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
    return false;
  }
}
