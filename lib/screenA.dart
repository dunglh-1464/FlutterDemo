
import 'package:btvn_1/screenB.dart';
import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  static const routName = "A";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(

      color: Colors.orange,
      child: Center(
        child: RaisedButton(
          child: Text("Go B"),
          onPressed: (){
            Navigator.of(context).pushNamed(ScreenB.routName);
          },
        ),
      ),
    );
  }
}