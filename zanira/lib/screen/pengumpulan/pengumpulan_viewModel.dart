import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/screen/pengumpulan/pengumpulan_state.dart';

//viewmodel
final PengumpulanVMProvider =
    StateNotifierProvider<PengumpulanViewModel, PengumpulanState>(
        (ref) => PengumpulanViewModel());

class PengumpulanViewModel extends StateNotifier<PengumpulanState> {
  PengumpulanViewModel()
      : super(const PengumpulanState(monthFilter: ''));

  Future<void> updateAllData() async {    
    //update the state
    state = state.copyWith(monthFilter: '');
  }
}
