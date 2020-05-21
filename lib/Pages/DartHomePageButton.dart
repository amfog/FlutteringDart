import 'package:flutter/material.dart';

import '../main.dart';
import 'HomePage.dart';
import 'flutterbutton1.dart';
import 'flutterbutton2.dart';

void main() {}

class DartHomePageButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.only(top: 40.0, left: 130.0, right: 11.0),
              child: new Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/dart2.png'),
                  backgroundColor: Colors.grey,
                ),
                height: 70.0,
                width: 70.0,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(150.0),
                    boxShadow: [
                      new BoxShadow(color: Colors.blueGrey, blurRadius: 10.0),
                    ]),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: FlutterButton1()),
            Divider(
              height: 7.0,
            ),
            FlutterButton2()
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, Home());
          },
        ),
      ),
    );
  }
}
