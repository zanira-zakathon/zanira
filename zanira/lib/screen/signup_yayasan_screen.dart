import 'dart:math';

import 'package:zanira/screen/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/screen/signup_screen.dart';
import 'package:zanira/style/button.dart';
import 'package:zanira/style/color.dart';

class SignUpYayasanScreen extends ConsumerWidget {
  final _formfield = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final alamatController = TextEditingController();
  final passToggleProvider = StateProvider<bool>((ref) => false);

  Widget build(BuildContext context, ref) {
    final passToggle = ref.watch(passToggleProvider.notifier).state;
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        //add appbar here
        body: Container(
            padding: EdgeInsets.all(35),
            //layout
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 100),

                //Textview
                Container(
                  child: Text(
                    'Nama yayasan',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield Nama Yayasan
                Container(
                    child: TextField(
                  controller: nameController,
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightbackground),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
                SizedBox(height: 10),

                //Textview
                Container(
                  child: Text(
                    'Alamat lengkap',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield
                Container(
                    child: TextField(
                  controller: alamatController,
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightbackground),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
                SizedBox(height: 10),

                // double box
                Container(
                    height: 50,
                    child: Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Provinsi',
                                  style: TextStyle(
                                    color: blackprimary,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                              ),
                              // Container(
                              //     child: TextField(
                              //   style: TextStyle(color: blackprimary),
                              //   decoration: InputDecoration(
                              //       contentPadding: EdgeInsets.symmetric(
                              //           vertical: 3, horizontal: 10),
                              //       border: OutlineInputBorder(
                              //           borderSide:
                              //               BorderSide(color: lightbackground),
                              //           borderRadius: BorderRadius.all(
                              //               Radius.circular(10)))),
                              // )),
                            ])
                      ],
                    ))),

                SizedBox(height: 100),
                Container(
                  child: Padding(
                      padding: EdgeInsets.only(top: 35),
                      child: SizedBox(
                        height: 40,
                        child: ElevatedButton(
                          style: lightButton,
                          onPressed: (
                              //navigate here
                              ) {
                            String token = generateRandomString(8);
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    SignUpScreen('admin', token)));
                          },
                          child: Text(
                            'Daftarkan admin',
                            style: TextStyle(color: blackprimary),
                          ),
                        ),
                      )),
                )
                //masukin button daftar
              ],
            )));
  }

  String generateRandomString(int length) {
    final random = Random();
    const availableChars =
        'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    final randomString = List.generate(length,
            (index) => availableChars[random.nextInt(availableChars.length)])
        .join();

    return randomString;
  }
}
