
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';

import 'AboutButton.dart';

void main() => runApp(Animate1());

class Animate1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Anime(),
    );
  }
}

class Anime extends StatefulWidget {

  @override
  _AnimeState createState() => _AnimeState();
}

class _AnimeState extends State<Anime>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this, duration: Duration(milliseconds: 2000));
    animation =
        Tween<double>(begin: 70.0, end: 200.0).animate(animationController);
    animation.addListener(() {
      setState(() {
        print(animation.value.toString());
      });
    });
    animation.addStatusListener((status) => print(status));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
              height: animation.value,
              width: animation.value,
              child: FlutterLogo()),
          Divider(
            height: 30.0,
            color: Colors.black54,
          ),
          Card(
            color: Colors.black,
            child: (Text(
              "Flutter Application",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                  color: Colors.lightBlue),
            )),
          ),
          Divider(
            height: 30.0,
            color: Colors.black54,
          ),
           FloatingActionButton(backgroundColor: Colors.lightBlue,
            child: Icon(Icons.navigate_next),
              onPressed: () => setState((){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (BuildContext context) => AboutButton()));
              })
          )
        ],
      ),
    );
  }
}
