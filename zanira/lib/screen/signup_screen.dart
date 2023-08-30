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
        appBar: AppBar(
          backgroundColor: Colors.white,
          leadingWidth: 100,
          leading: Icon(
            Icons.arrow_circle_left_outlined,
            color: blackprimary,
            size: 35,
          ),
        ),
        body: Container(
            padding: EdgeInsets.all(35),
            //layout
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // SizedBox(height: 10),
                // Container(
                //   child: Text(
                //     'Nama lengkap',
                //     style: TextStyle(
                //       color: blackprimary,
                //       fontSize: 12,
                //       fontWeight: FontWeight.w300,
                //     ),
                //   ),
                // ),
                // Container(
                //     child: TextField(
                //   style: TextStyle(color: blackprimary),
                //   decoration: InputDecoration(
                //       contentPadding:
                //           EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                //       border: OutlineInputBorder(
                //           borderSide: BorderSide(color: lightbackground),
                //           borderRadius: BorderRadius.all(Radius.circular(10)))),
                // )),
                // SizedBox(height: 10),
                // Container(
                //   child: Text(
                //     'Nomor telpon',
                //     style: TextStyle(
                //       color: blackprimary,
                //       fontSize: 12,
                //       fontWeight: FontWeight.w300,
                //     ),
                //   ),
                // ),
                // Container(
                //     child: TextField(
                //   style: TextStyle(color: blackprimary),
                //   decoration: InputDecoration(
                //       contentPadding:
                //           EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                //       border: OutlineInputBorder(
                //           borderSide: BorderSide(color: lightbackground),
                //           borderRadius: BorderRadius.all(Radius.circular(10)))),
                // )),
                // SizedBox(height: 10),
                // Container(
                //   child: Text(
                //     'Email',
                //     style: TextStyle(
                //       color: blackprimary,
                //       fontSize: 12,
                //       fontWeight: FontWeight.w300,
                //     ),
                //   ),
                // ),
                // Container(
                //     child: TextField(
                //   style: TextStyle(color: blackprimary),
                //   decoration: InputDecoration(
                //       hintText: 'Opsional',
                //       hintStyle: TextStyle(
                //         fontSize: 13,
                //         color: Color(0xFF999999),
                //       ),
                //       contentPadding:
                //           EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                //       border: OutlineInputBorder(
                //           borderSide: BorderSide(color: lightbackground),
                //           borderRadius: BorderRadius.all(Radius.circular(10)))),
                // )),
                // SizedBox(height: 10),
                // Container(
                //   child: Text(
                //     'Token yayasan',
                //     style: TextStyle(
                //       color: blackprimary,
                //       fontSize: 12,
                //       fontWeight: FontWeight.w300,
                //     ),
                //   ),
                // ),
                // Container(
                //     child: TextField(
                //   style: TextStyle(color: blackprimary),
                //   decoration: InputDecoration(
                //       contentPadding:
                //           EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                //       border: OutlineInputBorder(
                //           borderSide: BorderSide(color: lightbackground),
                //           borderRadius: BorderRadius.all(Radius.circular(10)))),
                // )),
                // SizedBox(height: 10),
                // Container(
                //   child: Text(
                //     'Password',
                //     style: TextStyle(
                //       color: blackprimary,
                //       fontSize: 12,
                //       fontWeight: FontWeight.w300,
                //     ),
                //   ),
                // ),
                // Container(
                //     child: TextField(
                //   style: TextStyle(color: blackprimary),
                //   decoration: InputDecoration(
                //       contentPadding:
                //           EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                //       border: OutlineInputBorder(
                //           borderSide: BorderSide(color: lightbackground),
                //           borderRadius: BorderRadius.all(Radius.circular(10)))),
                // )),
                // SizedBox(height: 10),
                // Container(
                //   child: Text(
                //     'Konfirmasi password',
                //     style: TextStyle(
                //       color: blackprimary,
                //       fontSize: 12,
                //       fontWeight: FontWeight.w300,
                //     ),
                //   ),
                // ),
                // Container(
                //     child: TextField(
                //   style: TextStyle(color: blackprimary),
                //   decoration: InputDecoration(
                //       contentPadding:
                //           EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                //       border: OutlineInputBorder(
                //           borderSide: BorderSide(color: lightbackground),
                //           borderRadius: BorderRadius.all(Radius.circular(10)))),
                // )),
                SizedBox(height: 65),

                //here starts sign up yayasan (only)
                SizedBox(height: 10),
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
                    'Provinsi',
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
                    'Kabupaten/Kota',
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
                    'Kecamatan',
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
                    'Kode pos',
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
                //here ends sign up yayasan  (only)
                //masukin button daftar
                Container(
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
                          "Daftar",
                          style: TextStyle(color: blackprimary),
                        )),
                  ),
                )),
              ],
            )));
  }

  // Widget dialog() {
  //   return Container();
  // }
  // Widget build(BuildContext context, ref) {
  //   final passToggle = ref.watch(passToggleProvider.notifier).state;
  //   return Scaffold(
  //       backgroundColor: Colors.white,
  //       resizeToAvoidBottomInset: false,
  //       //add appbar here
  //       body: Container(
  //           padding: EdgeInsets.all(35),
  //           //layout
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.start,
  //             crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 SizedBox(height: 100),
//                 Container(
//                   child: Text(
//                     'Nama yayasan',
//                     style: TextStyle(
//                       color: blackprimary,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   ),
//                 ),
//                 Container(
//                     child: TextField(
//                   style: TextStyle(color: blackprimary),
//                   decoration: InputDecoration(
//                       contentPadding:
//                           EdgeInsets.symmetric(vertical: 3, horizontal: 10),
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide(color: lightbackground),
//                           borderRadius: BorderRadius.all(Radius.circular(10)))),
//                 )),
//                 SizedBox(height: 10),
//                 Container(
//                   child: Text(
//                     'Alamat lengkap',
//                     style: TextStyle(
//                       color: blackprimary,
//                       fontSize: 12,
//                       fontWeight: FontWeight.w300,
//                     ),
//                   ),
//                 ),
//                 Container(
//                     child: TextField(
//                   style: TextStyle(color: blackprimary),
//                   decoration: InputDecoration(
//                       contentPadding:
//                           EdgeInsets.symmetric(vertical: 3, horizontal: 10),
//                       border: OutlineInputBorder(
//                           borderSide: BorderSide(color: lightbackground),
//                           borderRadius: BorderRadius.all(Radius.circular(10)))),
//                 )),
//                 SizedBox(height: 10),

//                 // double box
//                 Container(
//                     height: 50,
//                     child: Expanded(
//                         child: Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         Column(
//                             mainAxisSize: MainAxisSize.min,
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: <Widget>[
//                               Container(
//                                 child: Text(
//                                   'Provinsi',
//                                   style: TextStyle(
//                                     color: blackprimary,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.w300,
//                                   ),
//                                 ),
//                               ),
//                               // Container(
//                               //     child: TextField(
//                               //   style: TextStyle(color: blackprimary),
//                               //   decoration: InputDecoration(
//                               //       contentPadding: EdgeInsets.symmetric(
//                               //           vertical: 3, horizontal: 10),
//                               //       border: OutlineInputBorder(
//                               //           borderSide:
//                               //               BorderSide(color: lightbackground),
//                               //           borderRadius: BorderRadius.all(
//                               //               Radius.circular(10)))),
//                               // )),
//                             ])
//                       ],
//                     ))),

//                 SizedBox(height: 100),
//                 //masukin button daftar
//               ],
//             )));
  //
}
