import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/data/pengumpulan/service/pengumpulan_service.dart';
import 'package:zanira/data/pengumpulan/service/pengumpulan_service_impl.dart';
import 'package:zanira/dependency/dependency.dart';
import 'package:zanira/style/button.dart';
import 'package:zanira/style/color.dart';

class inputpengumpulanscreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      inputpengumpulanscreenState();
}

class inputpengumpulanscreenState
    extends ConsumerState<inputpengumpulanscreen> {
  final nominalController = TextEditingController();
  final tanggalController = TextEditingController();
  final bulanController = TextEditingController();
  final tahunController = TextEditingController();
  final tujuanController = TextEditingController();
  
  //banyak 
  final banyakController = TextEditingController();

  final namaMuzakkiController = TextEditingController();
  final noMuzakkiController = TextEditingController();
  final tanggunganController = TextEditingController();

  String bentukText = " ";
  String kategoriText = " ";

  PengumpulanServices pengumpulanServices = getIt<PengumpulanServices>(
      instanceName: (PengumpulanServicesImpl).toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,

        //add appbar here
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 100,
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_circle_left_outlined,
                color: blackprimary, size: 35),
          ),
        ),
        body: Container(
            padding: EdgeInsets.all(35),
            //layout
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Padding
                SizedBox(height: 50),

                //Textview Bentuk
                Container(
                  child: Text(
                    'Bentuk',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield Bentuk
                Container(
                  child: TextButton(
                      style: TextButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          minimumSize: const Size.fromHeight(50),
                          side: BorderSide(color: blackprimary)),
                      onPressed: () {
                        pengumpulanServices.createPengumpulan(
                            kategoriText,
                            int.parse(nominalController.text),
                            tahunController.text +
                                '-' +
                                bulanController.text +
                                '-' +
                                tanggalController.text,
                            bentukText,
                            namaMuzakkiController.text,
                            noMuzakkiController.text,
                            tujuanController.text,
                            int.parse(tanggunganController.text));
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  backgroundColor: lightbackground,
                                  content: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        //There should be an easier way to do this
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              bentukText = 'Uang';
                                              Navigator.of(context).pop();
                                            });
                                          },
                                          child: Text("Uang",
                                              style: TextStyle(
                                                  color: blackprimary,
                                                  fontSize: 15)),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              bentukText = 'Benda';
                                              Navigator.of(context).pop();
                                            });

                                            showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    AlertDialog(
                                                      backgroundColor:
                                                          Colors.white,
                                                      content: Container(
                                                          child: Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: <Widget>[
                                                          Container(
                                                            child: Text(
                                                              'Banyak Benda',
                                                              style: TextStyle(
                                                                color:
                                                                    blackprimary,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ),
                                                            ),
                                                          ),

                                                          //Textfield nominal
                                                          Container(
                                                              child: TextField(
                                                            controller:
                                                                banyakController,
                                                            style: TextStyle(
                                                                color:
                                                                    blackprimary),
                                                            decoration: InputDecoration(
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            3,
                                                                        horizontal:
                                                                            10),
                                                                border: OutlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                lightbackground),
                                                                    borderRadius:
                                                                        BorderRadius.all(
                                                                            Radius.circular(10)))),
                                                          )),

                                                          Container(
                                                              alignment: Alignment
                                                                  .bottomLeft,
                                                              child: TextButton(
                                                                onPressed: () {
                                                                  setState(() {
                                                                    nominalController
                                                                            .text =
                                                                        calculator(
                                                                            banyakController.text);
                                                                    ;
                                                                    Navigator.of(
                                                                            context)
                                                                        .pop();
                                                                  });
                                                                },
                                                                child: Text(
                                                                    "Submit"),
                                                              ))
                                                        ],
                                                      )),
                                                    ));
                                          },
                                          child: Text("Benda",
                                              style: TextStyle(
                                                  color: blackprimary,
                                                  fontSize: 15)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                      },
                      child: Text(
                        bentukText,
                        style: TextStyle(color: blackprimary),
                      )),
                ),

                //Padding
                SizedBox(height: 10),

                //Textview Kategori
                Container(
                  child: Text(
                    'Kategori',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield Kategori
                Container(
                  child: TextButton(
                      style: TextButton.styleFrom(
                          padding:
                              EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          minimumSize: const Size.fromHeight(50),
                          side: BorderSide(color: blackprimary)),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  backgroundColor: lightbackground,
                                  content: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              kategoriText = 'Zakat Maal';
                                              Navigator.of(context).pop();
                                            });
                                          },
                                          child: Text("Zakat Maal",
                                              style: TextStyle(
                                                  color: blackprimary,
                                                  fontSize: 15)),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              kategoriText = 'Zakat Fitrah';
                                              Navigator.of(context).pop();
                                            });
                                          },
                                          child: Text("Zakat Fitrah",
                                              style: TextStyle(
                                                  color: blackprimary,
                                                  fontSize: 15)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ));
                      },
                      child: Text(
                        kategoriText,
                        style: TextStyle(color: blackprimary),
                      )),
                ),

                //padding
                SizedBox(height: 10),

                //Textview Nominal
                Container(
                  child: Text(
                    'Nominal',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield nominal
                Container(
                    child: TextField(
                  controller: nominalController,
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightbackground),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),

                //Padding
                SizedBox(height: 10),

                //Tanggal Textview
                Container(
                  child: Text(
                    'Tanggal',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield Tanggal
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextField(
                            controller: tanggalController,
                            style: TextStyle(color: blackprimary),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightbackground),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))))),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextField(
                            controller: bulanController,
                            style: TextStyle(color: blackprimary),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightbackground),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))))),
                      ),
                      SizedBox(
                        width: 100,
                        child: TextField(
                            controller: tahunController,
                            style: TextStyle(color: blackprimary),
                            decoration: InputDecoration(
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 3, horizontal: 10),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: lightbackground),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(10))))),
                      ),
                    ],
                  ),
                ),

                //Padding
                SizedBox(height: 10),

                //Textview Tujuan
                Container(
                  child: Text(
                    'Tujuan',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield tujuan (optional:hint)
                Container(
                    child: TextField(
                  controller: tujuanController,
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      hintText: 'Opsional',
                      hintStyle: TextStyle(
                        fontSize: 13,
                        color: Color(0xFF999999),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightbackground),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
                //Button Tambahkan

                Expanded(
                    child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: Container(
                      child: Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: SizedBox(
                      height: 40,
                      child: ElevatedButton(
                          style: lightButton,
                          onPressed: () {
                            // showDialog(
                            //     context: context,
                            //     builder: (context) =>
                            //         AlertDialog(content: dialog()));
                          },
                          child: Text(
                            "Tambahkan",
                            style: TextStyle(color: blackprimary),
                          )),
                    ),
                  )),
                )),
              ],
            )));
  }

  String calculator(String Nominal) {
    int n = int.parse(Nominal);
    int total = n * 25000;
    return total.toString();
  }
}
