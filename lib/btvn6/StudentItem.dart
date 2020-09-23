import 'package:btvn_1/btvn6/Student.dart';
import 'package:flutter/material.dart';

class StudentItem extends StatefulWidget {
  Student student;
  final Function(Student) onClick;
  final Function(Student) onLongPress;

  StudentItem({Key key, this.student, this.onClick, this.onLongPress}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StudentItem();
  }
}

class _StudentItem extends State<StudentItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        print("ON_LONG_PRESS");
        widget.onLongPress(widget.student);
      },
      behavior: HitTestBehavior.translucent,
      onTap: () {
        print("Tap Item");
        widget.onClick(widget.student);
      },
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                    border: Border.all(
                      color: Colors.redAccent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(25))),
                child: Center(child: Text("${widget.student.subject[0]}", style: TextStyle(color: Colors.white),))),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "${widget.student.subject ?? ""}",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      "${widget.student.name ?? ""}",
                      style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "${widget.student.point ?? 0}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
