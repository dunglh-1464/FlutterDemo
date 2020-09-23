import 'package:btvn_1/btvn6/Student.dart';
import 'package:flutter/material.dart';

class FormEditStudentScreen extends StatefulWidget {
  Student student;
  bool isEdit = false;
  static const routName = "FormEditStudentScreen";

  @override
  State<StatefulWidget> createState() {
    return _FormEditStudentScreen();
  }
}

class _FormEditStudentScreen extends State<FormEditStudentScreen> {

  @override
  Widget build(BuildContext context) {
    final List args = ModalRoute.of(context).settings.arguments;
    widget.student = args[0];
    widget.isEdit = args[1];
    var titleScreen = widget.isEdit == true ? "Sua Sinh vien" : "Tao moi sinh vien";
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Text(
                "$titleScreen",
                style: TextStyle(color: Colors.redAccent, fontSize: 30),
              ),
              TextFormField(
                initialValue: "${widget.student.name ?? ""}",
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Ho ten",
                ),
                onChanged: (text) {
                  widget.student.name = text;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                initialValue: "${widget.student.subject ?? ""}",
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Mon hoc",
                ),
                onChanged: (text) {
                  widget.student.subject = text;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                initialValue: "${widget.student.point ?? ""}",
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "Diem",
                ),
                onChanged: (text) {
                  widget.student.point = double.parse(text);
                },
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.pop(context, [widget.student, widget.isEdit]);
                    },
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Them",
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    textColor: Colors.white,
                    color: Colors.red,
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Huy",
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
