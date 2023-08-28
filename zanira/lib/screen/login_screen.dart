import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zanira/screen/signup_screen.dart';

class LoginScreen extends ConsumerWidget {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  final passToggleProvider = StateProvider<bool>((ref) => false);
  bool loading = false;

  @override
  Widget build(BuildContext context, ref) {
    final passToggle = ref.watch(passToggleProvider.notifier).state;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Center(
                child: Form(
          key: _formfield,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'assets/logo.png',
                width: 150,
                height: 150,
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 0, right: 10, bottom: 10),
                child: Text(
                  "PROCTTOR",
                  style: TextStyle(
                      fontSize: 27,
                      //fontFamily: ,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      //borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Email',
                      isDense: true,
                      hintText: 'Enter your email',
                      prefixIcon: Icon(Icons.email)),
                  validator: (value) {
                    bool emailValid = RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!);
                    if (value.isEmpty) {
                      return "Enter Email";
                    } else if (!emailValid) {
                      return "Enter Valid Email";
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.tealAccent)),
                      labelText: 'Password',
                      hintText: 'Enter your password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                            ref.read(passToggleProvider.notifier).state = !ref.read(passToggleProvider.notifier).state;
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      )),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Password";
                    } else if (passController.text.length < 8) {
                      return "Password must be >= 8 characters";
                    }
                  },
                  obscureText: passToggle,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              loading
                  ? Center(child: CircularProgressIndicator())
                  : SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 0, right: 20, bottom: 0),
                          child: ElevatedButton(
                            onPressed: () async {
                              if (_formfield.currentState!.validate()) {
                                //login success                               
                              }
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.tealAccent[700]),
                            child: const Text(
                              "Log in",
                              style: TextStyle(color: Colors.white),
                            ),
                          )),
                    ),
              // Align(
              //     alignment: Alignment.topLeft,
              //     child: Padding(
              //         padding: const EdgeInsets.only(left: 20, top: 5),
              //         child: GestureDetector(
              //           child: const Text(
              //             "Forget your password?",
              //             style:
              //                 TextStyle(fontSize: 13, color: Colors.blueGrey),
              //           ),
              //           onTap: () {
              //             print("Hello from password");
              //           },
              //         ))),
              const SizedBox(
                height: 30,
              ),
              Text.rich(TextSpan(children: [
                const TextSpan(
                    text: "Don't have account? ",
                    style: TextStyle(fontSize: 14)),
                TextSpan(
                    text: "Sign Up",
                    style: const TextStyle(fontSize: 14, color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SignUpScreen()));
                      })
              ])),
              const SizedBox(height: 70),
              const Text('@Hanaang x ZG 2023', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.teal))
            ],
          ),
        ))));
  }
}
