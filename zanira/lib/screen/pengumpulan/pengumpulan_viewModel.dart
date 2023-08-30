import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:zanira/data/barchart/mybarchart.dart';
import 'package:zanira/data/pengumpulan/entity/pengumpulan.dart';
import 'package:zanira/data/pengumpulan/service/pengumpulan_service.dart';
import 'package:zanira/data/pengumpulan/service/pengumpulan_service_impl.dart';
import 'package:zanira/dependency/dependency.dart';
import 'package:zanira/screen/pengumpulan/pengumpulan_state.dart';

//viewmodel
final PengumpulanVMProvider =
    StateNotifierProvider<PengumpulanViewModel, PengumpulanState>(
        (ref) => PengumpulanViewModel());

class PengumpulanViewModel extends StateNotifier<PengumpulanState> {
  PengumpulanViewModel()
      : super(const PengumpulanState(monthFilter: '', yearFilter: ''));

  PengumpulanServices pengumpulanServices = getIt<PengumpulanServices>(
      instanceName: (PengumpulanServicesImpl).toString());

  final currentMonth = DateTime.now().month.toString();
  final currentYear = DateTime.now().year.toString();

  Future<void> updateAllData() async {
    //update the state
    int total = await pengumpulanServices.getPengumpulanTotal();
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String month = sharedPreferences.getString('pengumpulan_month') ?? '';
    String year = sharedPreferences.getString('pengumpulan_year') ?? '';
    List<Pengumpulan> monthlyList;
    List<MyBarChart> yearlyNominal;
    print(total);
    if (month.isNotEmpty && year.isNotEmpty) {
      monthlyList = await pengumpulanServices.pengumpulanList(month, year);
      yearlyNominal = await pengumpulanServices.getYearlyPengumpulan(year);
      state = state.copyWith(
          yearlyNominal: yearlyNominal,
          monthlyList: monthlyList,
          monthFilter: month,
          yearFilter: year,
          terkumpul: total.toDouble());
    } else {
      sharedPreferences.setString('pengumpulan_month', currentMonth);
      sharedPreferences.setString('pengumpulan_year', currentYear);
      monthlyList =
          await pengumpulanServices.pengumpulanList(currentMonth, currentYear);
      yearlyNominal =
          await pengumpulanServices.getYearlyPengumpulan(currentYear);
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
    sharedPreferences.setString('pengumpulan_month', month);
    sharedPreferences.setString('pengumpulan_year', year);
    List<Pengumpulan> monthlyList =
        await pengumpulanServices.pengumpulanList(month, year);
    List<MyBarChart> yearlyNominal =
        await pengumpulanServices.getYearlyPengumpulan(year);
    print('a');
    print(yearlyNominal);
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
    List<Pengumpulan> monthlyList;
    if (month.isNotEmpty && year.isNotEmpty) {
      monthlyList =
          await pengumpulanServices.pengumpulanList(month, year);
      state = state.copyWith(monthlyList:       monthlyList
          .where((element) => element.kategori.toLowerCase() == kategori).toList()
, kategori: kategori);
    } else {
      sharedPreferences.setString('pengumpulan_month', currentMonth);
      sharedPreferences.setString('pengumpulan_year', currentYear);
      monthlyList = await pengumpulanServices.pengumpulanList(
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
