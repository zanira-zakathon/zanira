import 'package:fl_chart/src/chart/bar_chart/bar_chart.dart';
import 'package:zanira/api_service/api_service.dart';
import 'package:zanira/data/barchart/mybarchart.dart';
import 'package:zanira/data/pengumpulan/entity/pengumpulan.dart';
import 'package:zanira/data/pengumpulan/service/pengumpulan_service.dart';
import 'package:zanira/dependency/constant.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'dart:convert';

class PengumpulanServicesImpl extends APIService
    implements PengumpulanServices {
  @override
  Future<List<Pengumpulan>> pengumpulanList(String month, String year) async {
    try {
      final response = await client
          .post(Uri.parse('$collectionURL-date'),
              headers: await requestHeaders(),
              body: json.encode({"month": month, "year": year}))
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
          List<Pengumpulan> list = (jsonDecode(response.body) as List)
              .map((item) => Pengumpulan.fromJson(item))
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
  Future<int> getPengumpulanTotal() async {
    try {
      final response = await client
          .get(Uri.parse('$collectionURL-total'),
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
  Future<void> createPengumpulan(
      String kategori,
      int nominal,
      DateTime tanggal,
      String bentuk,
      String nama_muzakki,
      String no_muzakki,
      int tanggungan) async {
    try {
      final response = await client
          .post(Uri.parse(collectionURL),
              headers: await requestHeaders(),
              body: json.encode({
                'kategori': kategori,
                'nominal': nominal,
                'tanggal': tanggal,
                'bentuk': bentuk,
                'nama_muzakki': nama_muzakki,
                'no_muzakki': no_muzakki,
                'tanggungan': tanggungan
              }))
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
  Future<List<MyBarChart>> getYearlyPengumpulan(String year) async {
    try {
      final response = await client
          .post(Uri.parse('$collectionURL-yearly'),
              headers: await requestHeaders(),
              body: json.encode({"year": year}))
          .whenComplete(() => SmartDialog.dismiss());

      switch (response.statusCode) {
        case 200:
        
          print(response.body);
          List<MyBarChart> list = (jsonDecode(response.body) as List)
              .map((item) => MyBarChart.fromJson(item))
              .toList();
          print(response.body);
          print(list);
          return list;
        default:
          handleError(response.statusCode);
      }
    } catch (e) {
      handleUncaughtError();
    }
    return [];
  }
}
