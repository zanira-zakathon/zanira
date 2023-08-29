import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
            height: 150,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        bottomLeft: Radius.circular(50))),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Username'),
                      Icon(Icons.person_outlined)
                    ]),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          Container(
            child: Text(
              'Berita Terbaru',
              style: TextStyle(color: blackprimary),
            ),
          ),

          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.all(5),
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: lightbackground),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              )),

          SizedBox(
            height: 20,
          ),

          ElevatedButton(
              onPressed: () {},
              style: darkButton_home,
              child: Text("Pengumpulan Zakat",
                  style: TextStyle(fontWeight: FontWeight.bold))),

          ElevatedButton(
              onPressed: () {},
              style: darkButton_home,
              child: Text("Pendistribusian Zakat",
                  style: TextStyle(fontWeight: FontWeight.bold))),

          SizedBox(
            height: 20,
          ),

          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.all(5),
                height: 30,
                decoration: BoxDecoration(
                    border: Border.all(color: lightbackground),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
              )),
        ],
      ),
    );
  }
}
