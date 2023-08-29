import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/data/user/service/user_service.dart';
import 'package:zanira/data/user/service/user_service_Impl.dart';
import 'package:zanira/dependency/dependency.dart';
import 'package:zanira/screen/home/home_screen.dart';
import 'package:zanira/screen/signup_screen.dart';
import 'package:zanira/main.dart';
import 'package:zanira/style/color.dart';
import 'package:zanira/style/button.dart';
import 'package:zanira/screen/home/home_screen.dart';
import 'package:zanira/screen/signup_screen.dart';

class LoginScreen extends ConsumerWidget {
  final _formfield = GlobalKey<FormState>();

  final FocusNode _focusNodePassword = FocusNode();
  final noHpController = TextEditingController();
  final passController = TextEditingController();

  final passToggleProvider = StateProvider<bool>((ref) => false);
  bool loading = false;

  UserServices userServices =
      getIt<UserServices>(instanceName: (UserServicesImpl).toString());

  @override
  Widget build(BuildContext context, ref) {
    final passToggle = ref.watch(passToggleProvider);
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: Container(
          padding: EdgeInsets.all(50),

          //Ini vertical linear layout
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Textview Masuk
              Container(
                child: Center(
                    child: Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Text(
                          'Masuk',
                          style: TextStyle(color: blackprimary, fontSize: 25),
                        ))),
              ),

              //Textview Username/Nomor Telepon
              Container(
                  child: Padding(
                padding: EdgeInsets.only(top: 35),
                child: Text(
                  'Username/Nomor Telepon ',
                  style: TextStyle(
                      color: blackprimary,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              )),

              //Textfield and Icon for Username/Nomor Telepon
              Container(
                child: TextField(
                  controller: noHpController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person_outlined),
                  ),
                ),
              ),

              //Textview Password
              Container(
                  child: Padding(
                padding: EdgeInsets.only(top: 35),
                child: Text(
                  'Password ',
                  style: TextStyle(
                      color: blackprimary,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              )),

              //Textfield and Icon for Password
              Container(
                child: TextField(
                  controller: passController,
                  keyboardType: TextInputType.name,
                  obscureText: !passToggle,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline),
                    suffixIcon: IconButton(
                      icon: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        ref.read(passToggleProvider.notifier).state =
                            !ref.read(passToggleProvider.notifier).state;
                      },
                    ),
                  ),
                ),
              ),

              // Button login
              Container(
                  child: Padding(
                padding: EdgeInsets.only(top: 35),
                child: SizedBox(
                  height: 40,
                  child: ElevatedButton(
                      style: darkButton,
                      onPressed: () {
                        userServices
                            .login(noHpController.text, passController.text)
                            .then((value) {
                          if (value) {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                                (route) => false);
                          }
                        });
                      },
                      child: Text(
                        "Masuk",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                ),
              )),

              //Align to bottom
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  // Textview daftar sebagai
                  Container(
                      child: Padding(
                    padding: EdgeInsets.only(top: 250),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Atau daftar sebagai',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: blackprimary,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )),

                  //button sign up
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //Button Sign Yayasan
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                                style: lightButton_small,
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                                },
                                child: Text(
                                  "Yayasan",
                                  style: TextStyle(color: blackprimary),
                                )),
                          ),
                        ),

                        //Button Sign Anggota
                        Expanded(
                          child: ElevatedButton(
                              style: lightButton_small,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SignUpScreen()));
                              },
                              child: Text(
                                "Anggota",
                                style: TextStyle(color: blackprimary),
                              )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
