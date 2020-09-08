import 'package:flutter/material.dart';

class WidgetDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Shop Detail",
        home: Scaffold(
          body:  SafeArea(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text('Deliver features faster', textAlign: TextAlign.center),
                ),
                Expanded(
                  child: Text('Craft beautiful UIs', textAlign: TextAlign.center),
                ),
                Expanded(
                  child: FittedBox(
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: const FlutterLogo(),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}