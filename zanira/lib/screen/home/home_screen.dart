import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';

import 'package:zanira/screen/akun/akun_screen.dart';
import 'package:zanira/screen/pendistribusian/pendistribusian_screen.dart';
import 'package:zanira/screen/pengumpulan/pengumpulan_screen.dart';
import 'package:zanira/style/button.dart';
import 'package:zanira/style/color.dart';

class HomeScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //Topbar
          Container(
            color: header,
            height: 135,
            child: Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  child: Container(
                    height: 70,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50))),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Username',
                            style: TextStyle(fontSize: 15, color: blackprimary),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(width: 2, color: blackprimary)),
                            child: Icon(
                              Icons.person,
                              color: blackprimary,
                            ),
                          )
                        ]),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AkunScreen()));
                  }),
            ),
          ),

          //Padding
          SizedBox(
            height: 20,
          ),

          //BodyPart
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Bagan Berita
                Container(
                  child: Text(
                    'Berita Terbaru',
                    style: TextStyle(
                        color: blackprimary,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                //Box berita, can be scrolled and inside is ListView, untuk zidan, mohon dibantu
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: lightbackground, width: 5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      constraints: BoxConstraints(minHeight: 250),
                    )),

                //Padding
                SizedBox(
                  height: 20,
                ),

                //Button untuk ke pengumpulan zakat
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => pengumpulanScreen()));
                    },
                    style: darkButton_home,
                    child: Text("Pengumpulan Zakat",
                        style: TextStyle(fontWeight: FontWeight.bold))),

                //Button untuk ke distribusi zakat
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => PendistribusianScreen()));
                    },
                    style: darkButton_home,
                    child: Text("Distribusi Zakat",
                        style: TextStyle(fontWeight: FontWeight.bold))),

                SizedBox(
                  height: 20,
                ),

                //On going Distribution, using listview
                SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: lightbackground,
                          border: Border.all(color: lightbackground, width: 5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      constraints: BoxConstraints(minHeight: 150),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
