import 'package:flutter/material.dart';

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Shop Detail",
        home: Scaffold(
          body:  SafeArea(
            child: Container(
              constraints: BoxConstraints(minHeight: 10),
              child: Container(
                color: Colors.cyanAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
//                  mainAxisSize: MainAxisSize.max,
//                mainAxisSize: _mainAxisSize,
                  children: [
                    Container(color: Colors.redAccent,width: 50, height: 50,),
                    Container(color: Colors.orangeAccent,width: 50, height: 50,)
                  ],
                ),
              )
            ),
          ),
        )
    );
  }
}