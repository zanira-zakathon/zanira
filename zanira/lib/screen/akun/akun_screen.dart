import 'package:flutter/material.dart';

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
            Container(child: Text('username'))
          ]),
        ));
  }
}
