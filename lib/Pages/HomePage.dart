import 'package:flutter/material.dart';
import 'package:gradient_app_bar/gradient_app_bar.dart';

import 'Animation.dart';
import 'DartHomePageButton.dart';
import 'FlutterHomePageButton.dart';

void main() => runApp(Home());
double _dividerlength = 10.0;
double _ButtonfontSize = 30.0;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'roboto'),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return new Scaffold(
      appBar: GradientAppBar(
        //gradient appbar to be continued todo
        backgroundColorStart: Colors.blue,
        backgroundColorEnd: Colors.indigo,
        title: Text('Fluttering Dart',style: TextStyle(fontSize: _ButtonfontSize),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          HomePageStack(),
          new Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 8.0, bottom: 70.0),
                child: new Text(
                  "Let's Flutter With Dart",
                  style: new TextStyle(shadows: [
                    Shadow(
                      color: Colors.grey,
                      blurRadius: 10.0,
                      offset: Offset(5.0, 5.0),
                    ),
                  ], fontSize: 20.0),
                ),
              )
            ],
          ),
          //Flutter HomePage Button
          new Container(
            child: FlatButton(
              child: Text(
                'Flutter',
                style: TextStyle(fontSize: _ButtonfontSize, color: Colors.white),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          FlutterHomePageButton())),
            ),
            padding: EdgeInsets.all(9.0),
            height: 50.0,
            width: 350.0,
            decoration: new BoxDecoration(
              boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 12.0)],
              borderRadius: new BorderRadius.vertical(),
              gradient: new LinearGradient(
                  begin: Alignment.topLeft, end: Alignment.bottomRight,
                  //gradient colors
                  colors: [Colors.blue, Colors.lightBlue, Colors.cyan]),
            ),
          ),
          Divider(
            height: _dividerlength,
          ),
          //Dart HomePage Button
          new Container(
            child: FlatButton(
              child: Text(
                'Dart',
                style: TextStyle(fontSize: _ButtonfontSize, color: Colors.white),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => DartHomePageButton())),
            ),
            padding: EdgeInsets.all(9.0),
            height: 50.0,
            width: 350.0,
            decoration: new BoxDecoration(
              boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 12.0)],
              borderRadius: new BorderRadius.vertical(),
              gradient: new LinearGradient(
                  begin: Alignment.topLeft, end: Alignment.bottomRight,
                  //gradient colors
                  colors: [Colors.blue, Colors.lightBlue, Colors.cyan]),
            ),
          ),
          Divider(
            height: _dividerlength,
          ),
          //HomePage SourceCode Button
          new Container(
            child: FlatButton(
              child: Text(
                'About',
                style: TextStyle(fontSize: _ButtonfontSize, color: Colors.white),
              ),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => Animate1())),
            ),
            padding: EdgeInsets.all(9.0),
            height: 50.0,
            width: 350.0,
            decoration: new BoxDecoration(
              boxShadow: [new BoxShadow(color: Colors.black, blurRadius: 12.0)],
              borderRadius: new BorderRadius.vertical(),
              gradient: new LinearGradient(
                  begin: Alignment.topLeft, end: Alignment.bottomRight,
                  //gradient colors
                  colors: [Colors.blue, Colors.lightBlue, Colors.cyan]),
            ),
          ),
        ],
      ),
    );
  }
}


class HomePageStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[Padding(
          padding: const EdgeInsets.only(top: 140.0),
          child: new Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/glogo.png'),
              backgroundColor: Colors.grey,
            ),
            height: 60.0,
            width: 60.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
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
            height: 60.0,
            width: 60.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
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
            height: 60.0,
            width: 60.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(50.0),
                boxShadow: [
                  new BoxShadow(color: Colors.black87, blurRadius: 10.0),
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 150.0),
          child: new Container(
            margin: new EdgeInsets.only(right: 140.0, top: 45.0),
            height: 60.0,
            width: 60.0,
            decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(60.0),
                boxShadow: [
                  new BoxShadow(color: Colors.black87, blurRadius: 10.0),
                ],
                color: Colors.grey),
            child: new Icon(
              Icons.home,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
