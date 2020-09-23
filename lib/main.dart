import 'package:btvn_1/DatePickerDemo.dart';
import 'package:btvn_1/ExtractArgumentsScreen.dart';
import 'package:btvn_1/FirstRouter.dart';
import 'package:btvn_1/ListDemo.dart';
import 'package:btvn_1/SelectionButton.dart';
import 'package:btvn_1/btvn6/Student_HomeScreen.dart';
import 'package:btvn_1/btvn6/form_edit_student_screen.dart';
import 'package:btvn_1/home_list.dart';
import 'package:btvn_1/screenA.dart';
import 'package:btvn_1/screenB.dart';
import 'package:btvn_1/screenC.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StudentHomeScreen(),
    routes: {
      StudentHomeScreen.routName: (context) => StudentHomeScreen(),
      FormEditStudentScreen.routName: (context) => FormEditStudentScreen(),
    },
  ));
  /*
  runApp(MaterialApp(
    home: MyHomeApp(),
//    home: ScreenA(),
//    initialRoute: ScreenA.routName,
//    routes: {
//      ScreenA.routName: (context) => ScreenA(),
//      ScreenB.routName: (context) => ScreenB(),
//      ScreenC.routName: (context) => ScreenC(),
//    },


  )
  );
  
   */
}
