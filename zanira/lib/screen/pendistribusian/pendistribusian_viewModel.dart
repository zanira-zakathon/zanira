import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/screen/pendistribusian/pendistribusian_state.dart';

//viewmodel
final PendistribusianVMProvider =
    StateNotifierProvider<PendistribusianViewModel, PendistribusianState>(
        (ref) => PendistribusianViewModel());

class PendistribusianViewModel extends StateNotifier<PendistribusianState> {
  PendistribusianViewModel()
      : super(const PendistribusianState(monthFilter: ''));

  

  Future<void> updateAllData() async {
    
    //update the state
    state = state.copyWith(monthFilter: '');
  }
}
