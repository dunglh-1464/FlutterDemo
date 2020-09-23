import 'package:btvn_1/ItemView.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Person.dart';


List<Person> get generatePerson =>
    List<Person>.generate(
        30, (index) => Person("Nguyen Van $index", "012345678$index")
    );

class ListDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ListDemo();
}

class _ListDemo extends State<ListDemo> {

  final persons = generatePerson;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
            scrollDirection: Axis.vertical,
          itemCount: persons.length,
          itemBuilder: (context, index) => ItemList(
            person: persons[index],
          ),
          separatorBuilder: (context, index) => Divider(height: 1, thickness: 1,),
      )
        ),
      );

  }


}