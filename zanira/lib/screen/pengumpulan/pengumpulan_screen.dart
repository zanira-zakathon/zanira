//bikin UI nya dulu ya
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/screen/pengumpulan/pengumpulan_state.dart';
import 'package:zanira/screen/pengumpulan/pengumpulan_viewModel.dart';
import 'package:zanira/style/color.dart';

class pengumpulanScreen extends ConsumerWidget {
  late PengumpulanViewModel pengumpulanViewModel;
  late PengumpulanState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    pengumpulanViewModel = ref.watch(PengumpulanVMProvider.notifier);
    state = ref.watch(PengumpulanVMProvider);
    return Scaffold(
      //Topbar judul dan backbutton
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text("Pengumpulan",
              style: TextStyle(
                  color: blackprimary,
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ),
        leadingWidth: 100,
        leading: Icon(
          Icons.arrow_circle_left_outlined,
          color: blackprimary,
          size: 35,
        ),
      ),

      // body: ,
    );
  }
}
