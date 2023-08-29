import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zanira/screen/Pengumpulan/Pengumpulan_state.dart';

//viewmodel
final PengumpulanVMProvider =
    StateNotifierProvider<PengumpulanViewModel, PengumpulanState>(
        (ref) => PengumpulanViewModel());

class PengumpulanViewModel extends StateNotifier<PengumpulanState> {
  PengumpulanViewModel() : super(PengumpulanState(monthFilter: '', listPengumpulan: []));

  Future<void> updateAllData() async {
    state = state.copyWith(monthFilter: 'c');
  }
}
