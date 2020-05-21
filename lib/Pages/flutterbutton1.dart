import 'package:flutter/material.dart';

import 'FlutterHomePageButton.dart';
void main(){}
class FlutterButton1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return   Column(
      children: <Widget>[
        DownloadAndInstall()

      ],
    );
  }
}
double _height  = 50.0;
double _width = 350;
double _fontsize = 30.0;
class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      height: _height,
      width:  _width,
      decoration: new BoxDecoration(
        boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 12.0)],
        borderRadius: new BorderRadius.vertical(),
        gradient: new LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            //gradient colors
            colors: [
              Colors.blue,
              Colors.lightBlue,
              Colors.cyan
            ]),
      ),
    );
  }
}

class DownloadAndInstall extends StatefulWidget {
  @override
  _DownloadAndInstallState createState() => _DownloadAndInstallState();
}

class _DownloadAndInstallState extends State<DownloadAndInstall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text(
          'Download And Install',
          style: TextStyle(fontSize: _fontsize, color: Colors.white),
        ),
        onPressed: (){},
      ),
      padding: EdgeInsets.all(1.0),
      height: _height,
      width: _width,
      decoration: new BoxDecoration(
        boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 12.0)],
        borderRadius: new BorderRadius.vertical(),
        gradient: new LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            //gradient colors
            colors: [
              Colors.blue,
              Colors.lightBlue,
              Colors.cyan
            ]),
      ),
    );
  }
}
