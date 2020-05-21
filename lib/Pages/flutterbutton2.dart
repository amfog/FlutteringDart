import 'package:flutter/material.dart';

import 'FlutterHomePageButton.dart';
void main(){}
class FlutterButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  new Container(
      child: FlatButton(
        child: Text(
          'To be made',
          style: TextStyle(fontSize: 30.0, color: Colors.white),
        ),
        //soon to be done
        onPressed: () {},
      ),
      padding: EdgeInsets.all(1.0),
      height: 50.0,
      width: 350.0,
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

