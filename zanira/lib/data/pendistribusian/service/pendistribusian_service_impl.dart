import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';
import 'package:zanira/data/pendistribusian/service/pendistribusian_service.dart';
import 'package:zanira/api_service/api_service.dart';
import 'package:zanira/dependency/constant.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'dart:convert';

class PendistribusianServicesImpl extends APIService
    implements PendistribusianServices {
  @override
  Future<List<Pendistribusian>> getUnverifiedPendistribusian() async {
    try {
      final response = await client
          .get(Uri.parse('$distributionURL-unverified'),
              headers: await requestHeaders())
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          List<Pendistribusian> list = (jsonDecode(response.body) as List)
              .map((item) => Pendistribusian.fromJson(item))
              .toList();
          return list;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
    return [];
  }

  Future<int> getPendistribusianTotal() async {
    try {
      final response = await client
          .get(Uri.parse('$distributionURL-verified'),
              headers: await requestHeaders())
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          int total = (jsonDecode(response.body) as int);
          return total;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
    return 0;
  }

  @override
  Future<List<Pendistribusian>> getVerifiedPendistribusian(
      String month, String year) async {
    try {
      final response = await client
          .post(Uri.parse('$distributionURL-verified'),
              headers: await requestHeaders(),
              body: json.encode({'month': month, 'year': year}))
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          List<Pendistribusian> list = (jsonDecode(response.body) as List)
              .map((item) => Pendistribusian.fromJson(item))
              .toList();
          return list;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
    return [];
  }

  

  @override
  Future<void> createPendistribusian(
      String kategori,
      int nominal,
      DateTime tanggal,
      String bentuk,
      String tempat) async {
    try {
      final response = await client
          .post(Uri.parse(distributionURL),
              headers: await requestHeaders(),
              body: json.encode({'kategori': kategori, 'nominal': nominal, 'tanggal':tanggal, 'bentuk':bentuk, 'tempat':tempat}))
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          break;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
  }
  
  @override
  Future<void> updatePendistribusianStatus(int id, String status) async {
    try {
      final response = await client
          .post(Uri.parse('$distributionURL/$id'),
              headers: await requestHeaders(),
              body: json.encode({'status': status}))
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          break;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
  }
}
