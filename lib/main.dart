import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'Pages/HomePage.dart';

void main() => runApp(FDI());
double _fontsize = 30.0;
Color _textcolor = Colors.white;

class FDI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //adding dark mode
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'roboto'),
      home: StartScreen(),
    );
  }
}

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: GradientAppBar(
        title: Text(
          'Fluttering Dart',
          style: TextStyle(fontSize : _fontsize, color: _textcolor),
        ),
        backgroundColorStart: Colors.blue,
        backgroundColorEnd: Colors.indigo,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Logos(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              StartScreenText()
            ],
          ),
          StartButton()
        ],
      ),
    );
  }
}
class StartScreenText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 70.0),
      child: new Text(
        "Let's Flutter With Dart",
        style: new TextStyle(shadows: [
          Shadow(
            color: Colors.grey,
            blurRadius: 10.0,
            offset: Offset(5.0, 5.0),
          ),
        ], fontSize: _fontsize),
      ),
    );
  }
}

class StartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50,
      width: 170,
      color: Colors.blue,
      child: FlatButton(
        child: Text(
          'Start',
          style: TextStyle(fontSize: 22.0, color: Colors.white),
        ),
        onPressed: () => Navigator.push(context,
            MaterialPageRoute(builder: (BuildContext context) => Home())),
        //to be used
      ),
/*
            transform: Matrix4.rotationZ(0.5),
*/
    );
  }
}


class Logos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 140.0),
          child: new Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/glogo.png'),
              backgroundColor: Colors.grey,
            ),
            height: 80.0,
            width: 80.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(70.0),
                boxShadow: [
                  new BoxShadow(color: Colors.black87, blurRadius: 10.0),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: new Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/dart2.png'),
              backgroundColor: Colors.grey,
            ),
            margin: new EdgeInsets.only(left: 65.0, top: 45.0),
            height: 80.0,
            width: 80.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(70.0),
                boxShadow: [
                  new BoxShadow(color: Colors.black87, blurRadius: 10.0),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: new Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/flutter1.png'),
              backgroundColor: Colors.grey,
            ),
            margin: new EdgeInsets.only(right: 40.0, top: 45.0),
            height: 80.0,
            width: 80.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(70.0),
                boxShadow: [
                  new BoxShadow(color: Colors.black87, blurRadius: 10.0),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: new Container(
            child: Icon(
              Icons.navigation,
              color: Colors.white,
            ),
            margin: new EdgeInsets.only(right: 170.0, top: 45.0),
            height: 80.0,
            width: 80.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(70.0),
                boxShadow: [
                  new BoxShadow(color: Colors.black87, blurRadius: 10.0),
                ],
                color: Colors.grey),
          ),
        )
      ],
    );
  }
}
