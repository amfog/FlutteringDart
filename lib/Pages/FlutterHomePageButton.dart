import 'package:flutter/material.dart';
import 'package:realproject/Pages/HomePage.dart';

import 'flutterbutton1.dart';
import 'flutterbutton2.dart';

void main() {}

class FlutterHomePageButton extends StatelessWidget {
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
                  backgroundImage: AssetImage('assets/flutter1.png'),
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
                child: DownloadAndInstall()),
            Divider(
              height: 7.0,
            ),
            FlutterButton2()
          ]),
        ),

      ),
    );
  }
}
