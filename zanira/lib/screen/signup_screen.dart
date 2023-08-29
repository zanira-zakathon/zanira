import 'package:zanira/screen/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        backgroundColor: const Color.fromARGB(255, 19, 5, 5),
        body: SingleChildScrollView(
            child: Form(
          key: _formfield,
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              // Image.asset(
              //   'assets/logo.png',
              //   width: 100,
              //   height: 100,
              // ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 10),
                child: Text(
                  "Manage Your Project With Us",
                  style: TextStyle(
                      fontSize: 18,
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
                    EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 10),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Username',
                      isDense: true,
                      hintText: 'Enter your username'),
                  //style: TextStyle(fontSize: 13),
                  controller: nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter your name";
                    }
                  },
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      //borderRadius: BorderRadius.all(Radius.circular(10))),
                      labelText: 'Email',
                      isDense: true,
                      hintText: 'Enter your Email'),
                  //style: TextStyle(fontSize: 13),
                  controller: emailController,
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 0, right: 20, bottom: 10),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passController,
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan)),
                      labelText: 'Password',
                      isDense: true,
                      hintText: 'Enter your password',
                      suffixIcon: InkWell(
                        onTap: () {
                          ref.read(passToggleProvider.notifier).state =
                              !ref.read(passToggleProvider.notifier).state;
                        },
                        child: Icon(passToggle
                            ? Icons.visibility
                            : Icons.visibility_off),
                      )),
                  obscureText: passToggle,
                  //style: TextStyle(fontSize: 13),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Password";
                    } else if (value.length < 8) {
                      return "Password must at least 8 characters";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 0, right: 20, bottom: 10),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  controller: passConfirmController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.cyan)),
                      labelText: 'Confirm Password',
                      isDense: true,
                      hintText: 'Confirm your password'),
                  obscureText: true,
                  //style: TextStyle(fontSize: 13),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Password Confirmation";
                    } else if (passConfirmController.text !=
                        passController.text) {
                      return "Password don't match";
                    }
                  },
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20, top: 0, right: 20, bottom: 0),
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formfield.currentState!.validate()) {}
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.tealAccent[700]),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Text.rich(TextSpan(children: [
                const TextSpan(
                    text: "Already have an account? ",
                    style: TextStyle(fontSize: 14)),
                TextSpan(
                    text: "Sign In",
                    style: const TextStyle(fontSize: 14, color: Colors.blue),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      }),
              ])),
              const SizedBox(height: 40),
              const Text('@Hanaang x ZG 2023',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.teal))
            ],
          ),
        )));
  }
}
