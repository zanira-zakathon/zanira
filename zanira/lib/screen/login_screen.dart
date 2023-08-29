import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zanira/screen/signup_screen.dart';
import 'package:zanira/main.dart';

class LoginScreen extends ConsumerWidget {
  final _formfield = GlobalKey<FormState>();

  final FocusNode _focusNodePassword = FocusNode();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  final passToggleProvider = StateProvider<bool>((ref) => false);
  bool loading = false;

  @override
  Widget build(BuildContext context, ref) {
    // final passToggle = ref.watch(passToggleProvider.notifier).state;
    return Scaffold(
        backgroundColor: Colors.white,
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
                          style: TextStyle(color: Colors.black, fontSize: 25),
                        ))),
              ),

              //Textview Username/Nomor Telepon
              Container(
                  child: Padding(
                padding: EdgeInsets.only(top: 35),
                child: Text(
                  'Username/Nomor Telepon: ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              )),

              //Textfield and Icon for Username/Nomor Telepon
              Container(
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person_outlined)),
                ),
              ),

              //Textview Password
              Container(
                  child: Padding(
                padding: EdgeInsets.only(top: 35),
                child: Text(
                  'Password: ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              )),

              //Textfield and Icon for Password
              Container(
                child: TextField(
                  controller: emailController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person_outlined)),
                ),
              )
            ],
          ),
        ));
  }
}
