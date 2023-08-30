import 'package:zanira/data/user/service/user_service.dart';
import 'package:zanira/data/user/service/user_service_impl.dart';
import 'package:zanira/dependency/constant.dart';
import 'package:zanira/dependency/dependency.dart';
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
  final nomorController = TextEditingController();
  final passToggleProvider = StateProvider<bool>((ref) => false);
  final tokenController = TextEditingController();

  final userRole;
  final token;
  SignUpScreen(this.userRole, [this.token]);

UserServices userServices =
      getIt<UserServices>(instanceName: (UserServicesImpl).toString());

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
          leading: IconButton(
            onPressed: () => Navigator.of(context).pop(),
            icon: Icon(Icons.arrow_circle_left_outlined,
                color: blackprimary, size: 35),
          ),
        ),
        body: SingleChildScrollView(child: Container(
            padding: EdgeInsets.all(35),
            //layout
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 10),

                //Textview
                Container(
                  child: Text(
                    'Nama lengkap',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield Nama
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
                    'Nomor telpon',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield Nomor
                Container(
                    child: TextField(
                  controller: nomorController,
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
                    'Email',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield email
                Container(
                    child: TextField(
                  controller: emailController,
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
                SizedBox(height: 10),

                //Textview
                Container(
                  child: Text(
                    'Token yayasan',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield Token
                Container(
                    child: TextField(
                  controller: tokenController..text = token,
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
                    'Password',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield Password
                Container(
                    child: TextField(
                  controller: passController,
                  obscureText: !passToggle,
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          ref.read(passToggleProvider.notifier).state =
                              !ref.read(passToggleProvider.notifier).state;
                        },
                      ),
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
                    'Konfirmasi password',
                    style: TextStyle(
                      color: blackprimary,
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),

                //Textfield Pass Confirm
                Container(
                    child: TextField(
                  controller: passConfirmController,
                  keyboardType: TextInputType.name,
                  obscureText: !passToggle,
                  style: TextStyle(color: blackprimary),
                  decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          ref.read(passToggleProvider.notifier).state =
                              !ref.read(passToggleProvider.notifier).state;
                        },
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: lightbackground),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                )),
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
                          userRole==ADMIN ?
                           userServices.signUpAdmin(nameController.text, nomorController.text, emailController.text, passController.text) :
                           userServices.signUpMember(nameController.text, nomorController.text, emailController.text, passController.text)
                           ;
                        },
                        child: Text(
                          "Daftar",
                          style: TextStyle(color: blackprimary),
                        )),
                  ),
                )),
              ],
            ))));
  }
}
