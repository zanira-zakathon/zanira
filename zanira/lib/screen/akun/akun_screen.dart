import 'package:flutter/material.dart';
import 'package:zanira/style/button.dart';
import 'package:zanira/style/color.dart';

class AkunScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        // body: Center(
        //   child: Container(
        //     child: Icon(Icons.person_2_outlined),
        //   ),
        body: Container(
          child: Column(children: <Widget>[
            Container(
              child: Icon(Icons.person_2_outlined),
            ),
            Container(child: Text('username')),
            Container(
              child: Center(
                  child: Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Text(
                        'Infirmasi akun',
                        style: TextStyle(color: blackprimary, fontSize: 25),
                      ))),
            )
          ]),
        ));
  }
}
