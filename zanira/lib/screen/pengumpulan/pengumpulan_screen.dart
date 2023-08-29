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
                  fontSize: 18,
                  fontWeight: FontWeight.bold)),
        ),
        leadingWidth: 100,
        leading: Icon(
          Icons.arrow_circle_left_outlined,
          color: blackprimary,
          size: 35,
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //Box total terkumpul
            Container(
              decoration: BoxDecoration(
                  color: lightbackground,
                  border: Border.all(color: lightbackground, width: 5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: Column(
                children: <Widget>[
                  //Textview for bacaan terkumpul
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Terkumpul",
                        style: TextStyle(color: blackprimary, fontSize: 12),
                      )),
                  //Textview for nominal
                  Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Rp. 00.00,-",
                        style: TextStyle(
                            color: blackprimary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),

            //Padding
            SizedBox(height: 10),

            //Box untuk grafik
            Container(
              constraints: BoxConstraints(minHeight: 150),
              decoration: BoxDecoration(
                  color: lightbackground,
                  border: Border.all(color: lightbackground, width: 5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  )),
            ),

            //Padding
            SizedBox(
              height: 15,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                //Sort by Month and
                TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        fixedSize: Size(160, 40),
                        backgroundColor: lightbackground,
                        // padding: EdgeInsets.all(10),
                        textStyle: TextStyle(
                          fontSize: 15,
                          color: blackprimary,
                        )),
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                                backgroundColor: lightbackground,
                                content: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            //Plus sign
                                            Icon(Icons.add_box_outlined,
                                                size: 30),

                                            //Padding
                                            SizedBox(
                                              width: 10,
                                            ),

                                            //Tahun Textview
                                            Container(
                                                child: Text(
                                              "2023",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 30,
                                              ),
                                            )),

                                            //Padding
                                            SizedBox(
                                              width: 10,
                                            ),

                                            //Minus Sign
                                            Icon(
                                                Icons
                                                    .indeterminate_check_box_outlined,
                                                size: 30)
                                          ],
                                        ),
                                      ),

                                      //Padding
                                      SizedBox(
                                        height: 20,
                                      ),

                                      //There should be an easier way to do this
                                      Text("Januari"),
                                      Text("Februari"),
                                      Text("Maret"),
                                      Text("April"),
                                      Text("Mei"),
                                      Text("Juni"),
                                      Text("Juli"),
                                      Text("Agustus"),
                                      Text("September"),
                                      Text("Oktober"),
                                      Text("November"),
                                      Text("Desember"),
                                    ],
                                  ),
                                ),
                              ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Bulan",
                          style: TextStyle(color: blackprimary),
                        ),
                        Icon(
                          Icons.arrow_drop_down_circle,
                          color: blackprimary,
                          size: 20,
                        )
                      ],
                    )),

                TextButton(
                    style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        fixedSize: Size(160, 40),
                        backgroundColor: lightbackground,
                        // padding: EdgeInsets.all(10),
                        textStyle: TextStyle(
                          fontSize: 15,
                          color: blackprimary,
                        )),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          backgroundColor: lightbackground,
                          content: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("Tanggal"),
                                Text("Kategori"),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Urutkan",
                          style: TextStyle(color: blackprimary),
                        ),
                        Icon(
                          Icons.arrow_drop_down_circle,
                          color: blackprimary,
                          size: 20,
                        )
                      ],
                    ))
              ],
            ),
            Table(),
          ],
        ),
      ),
    );
  }
}
