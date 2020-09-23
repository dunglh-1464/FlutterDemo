import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("First Router"),),
      body: Center(
        child: RaisedButton(child: Text("Open Router"),
        onPressed: (){
          Navigator.pushNamed(context, '/second');
        },
          ))
    );
  }
}

class SecondRouter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Router"),
      ),
      body: Center(child: RaisedButton(
        onPressed: () {
          Navigator.pop(context);

        },
        child: Text("Go Back"),
      ),),
    );
  }
}

