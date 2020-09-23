import 'package:btvn_1/btvn6/Student.dart';
import 'package:btvn_1/btvn6/StudentItem.dart';
import 'package:btvn_1/btvn6/form_edit_student_screen.dart';
import 'package:flutter/material.dart';

class StudentHomeScreen extends StatefulWidget {
  static const routName = "StudentHomeScreen";

  @override
  State<StatefulWidget> createState() {
    return _StudentHomeScreen();
  }
}

class _StudentHomeScreen extends State<StudentHomeScreen> {
  @override
  List<Student> students = List<Student>();

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.separated(
              itemBuilder: (context, index) => StudentItem(
                    student: students[index],
                    onClick: (student) {
                      _navigateCreatedAndEdititem(context, student: student, isEdit: true, isTap: () {
                        students[index] = student;
                        setState(() {});
                      });
                    },
                    onLongPress: (student) {
                      _showMaterialDialog((){
                        students.remove(student);
                        setState(() {

                        });
                      });
                    },
                  ),
              separatorBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Divider(color: Colors.black),
                  ),
              itemCount: students.length),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateCreatedAndEdititem(context, student: Student(), isEdit: false, isTap: () {});
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }

  _navigateCreatedAndEdititem(BuildContext context, {Student student = null, bool isEdit, Function() isTap}) async {
    final result = await Navigator.of(context).pushNamed(FormEditStudentScreen.routName, arguments: [student, isEdit]);
    if (isEdit == false) {
      final infoArrays = result as List;
      if (infoArrays.isNotEmpty) {
        students.add(infoArrays[0]);
      }
    } else {
      isTap();
    }
    setState(() {});
  }

  _showMaterialDialog(Function onDetele) {
    showDialog(
        context: context,
        builder: (_) => new AlertDialog(
          title: new Text("Delete Item"),
          content: new Text("Ban co muon xoa item nay khong?"),
          actions: <Widget>[
            FlatButton(
              child: Text('Xoa'),
              onPressed: () {
                Navigator.of(context).pop();
                onDetele();
              },
            ),
            FlatButton(
              child: Text('Huy!'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        ));
  }
}
