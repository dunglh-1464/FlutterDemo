import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  static const routName = "C";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var  args = ModalRoute.of(context).settings.arguments;
    print("datapush$args");
    return Container(
      color: Colors.cyanAccent,
      child:  Center(
        child: RaisedButton(
          child: Text("Pop B"),
          onPressed: (){
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ),
    );
  }
}