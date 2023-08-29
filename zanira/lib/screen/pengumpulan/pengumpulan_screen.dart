//bikin UI nya dulu ya
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/screen/pengumpulan/pengumpulan_state.dart';
import 'package:zanira/screen/pengumpulan/pengumpulan_viewModel.dart';

class pengumpulanScreen extends ConsumerWidget {
  late PengumpulanViewModel pengumpulanViewModel;
  late StateNotifier<PengumpulanState> state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // pengumpulanViewModel = ref.watch(PengumpulanVMProvider.notifier);
    // state = ref.watch(PengumpulanVMProvider as ProviderListenable<StateNotifier<PengumpulanState>>);
    return Scaffold(
        body: Column(children: [
      TextButton(
          onPressed: () {
            pengumpulanViewModel.updateAllData();
          },
          child: Text('b')),
      //Text(ref.read(pengumpulanViewModel).state.monthFilter))
    ]));
  }
}
