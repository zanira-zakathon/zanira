import 'package:zanira/screen/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/style/button.dart';
import 'package:zanira/style/color.dart';

class SignUpScreen extends ConsumerWidget {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final passConfirmController = TextEditingController();
  final nameController = TextEditingController();
  final passToggleProvider = StateProvider<bool>((ref) => false);

  @override
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
                Container(
                    child: TextField(
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightbackground),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
                SizedBox(height: 10),
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
                Container(
                    child: TextField(
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightbackground),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
                SizedBox(height: 10),
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
                Container(
                    child: TextField(
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightbackground),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
                SizedBox(height: 10),
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
                Container(
                    child: TextField(
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightbackground),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
                SizedBox(height: 10),
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
                Container(
                    child: TextField(
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightbackground),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
                SizedBox(height: 10),

                SizedBox(height: 65),
                //masukin button daftar
                Container(
                    child: Padding(
                  padding: EdgeInsets.only(top: 35),
                  child: SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        style: lightButton,
                        onPressed: () {
                          //ini isi apa gitu
                        },
                        child: Text(
                          "Tambahkan",
                          style: TextStyle(color: blackprimary),
                        )),
                  ),
                )),
              ],
            )));
  }
}
