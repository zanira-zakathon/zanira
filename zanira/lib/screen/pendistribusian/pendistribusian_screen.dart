//bikin UI nya dulu ya
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PendistribusianScreen extends ConsumerWidget {
  // late PendistribusianViewModel pendistribusianViewModel;
  // late PendistribusianState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //pendistribusianViewModel = ref.watch(PendistribusianVMProvider.notifier);
    //state = ref.watch(PendistribusianVMProvider);
    return Scaffold(
      //pendistribusianViewModel.updateAllData();
      appBar: AppBar(),
    );
  }
}
