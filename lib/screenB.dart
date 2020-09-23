
import 'package:btvn_1/screenC.dart';
import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  static const routName = "B";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:  Center(
        child: RaisedButton(
          child: Text("Go C"),
          onPressed: (){
            Navigator.of(context).pushNamed(ScreenC.routName, arguments: "string C");
          },
        ),
      ),
      color: Colors.red,
    );
  }
}