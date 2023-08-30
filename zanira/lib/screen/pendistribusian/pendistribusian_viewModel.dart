import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zanira/data/barchart/mybarchart.dart';
import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';
import 'package:zanira/data/pendistribusian/service/pendistribusian_service.dart';
import 'package:zanira/data/pendistribusian/service/pendistribusian_service_impl.dart';
import 'package:zanira/dependency/dependency.dart';
import 'package:zanira/screen/pendistribusian/pendistribusian_state.dart';

//viewmodel
final PendistribusianVMProvider =
    StateNotifierProvider<PendistribusianViewModel, PendistribusianState>(
        (ref) => PendistribusianViewModel());

class PendistribusianViewModel extends StateNotifier<PendistribusianState> {
  PendistribusianViewModel()
      : super(const PendistribusianState(monthFilter: '', yearFilter: ''));

  PendistribusianServices pendistribusianServices =
      getIt<PendistribusianServices>(
          instanceName: (PendistribusianServicesImpl).toString());

  final currentMonth = DateTime.now().month.toString();
  final currentYear = DateTime.now().year.toString();

  Future<void> updateAllData() async {
    //update the state
    int total = await pendistribusianServices.getPendistribusianTotal();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String month = sharedPreferences.getString('pendistribusian_month') ?? '';
    String year = sharedPreferences.getString('pendistribusian_year') ?? '';
    List<Pendistribusian> monthlyList;
    List<MyBarChart> yearlyNominal;
    print(total);
    if (month.isNotEmpty && year.isNotEmpty) {
      monthlyList =
          await pendistribusianServices.getVerifiedPendistribusian(month, year);
      yearlyNominal =
          await pendistribusianServices.getYearlyPendistribusian(year);
      state = state.copyWith(
          yearlyNominal: yearlyNominal,
          monthlyList: monthlyList,
          monthFilter: month,
          yearFilter: year,
          terkumpul: total.toDouble());
    } else {
      sharedPreferences.setString('pendistribusian_month', currentMonth);
      sharedPreferences.setString('pendistribusian_year', currentYear);
      monthlyList = await pendistribusianServices.getVerifiedPendistribusian(
          currentMonth, currentYear);
      yearlyNominal =
          await pendistribusianServices.getYearlyPendistribusian(currentYear);
      state = state.copyWith(
          yearlyNominal: yearlyNominal,
          monthlyList: monthlyList,
          monthFilter: currentMonth,
          yearFilter: currentYear,
          terkumpul: total.toDouble());
    }
  }

  Future<void> updateDate(String month, String year) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString('pendistribusian_month', month);
    sharedPreferences.setString('pendistribusian_year', year);
    List<Pendistribusian> monthlyList =
        await pendistribusianServices.getVerifiedPendistribusian(month, year);
    List<MyBarChart> yearlyNominal =
        await pendistribusianServices.getYearlyPendistribusian(year);
    state = state.copyWith(
        yearlyNominal: yearlyNominal,
        monthlyList: monthlyList,
        monthFilter: month,
        yearFilter: year);
  }

  Future<void> updateKategori(String kategori) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String month = sharedPreferences.getString('pendistribusian_month') ?? '';
    String year = sharedPreferences.getString('pendistribusian_year') ?? '';
    List<Pendistribusian> monthlyList;
    if (month.isNotEmpty && year.isNotEmpty) {
      monthlyList =
          await pendistribusianServices.getVerifiedPendistribusian(month, year);
      state = state.copyWith(monthlyList:       monthlyList
          .where((element) => element.kategori.toLowerCase() == kategori).toList()
, kategori: kategori);
    } else {
      sharedPreferences.setString('pendistribusian_month', currentMonth);
      sharedPreferences.setString('pendistribusian_year', currentYear);
      monthlyList = await pendistribusianServices.getVerifiedPendistribusian(
          currentMonth, currentYear);
      state = state.copyWith(
          monthlyList:       monthlyList
          .where((element) => element.kategori.toLowerCase() == kategori).toList(),
          monthFilter: currentMonth,
          yearFilter: currentYear,
          kategori: kategori);
    }
  }
}
