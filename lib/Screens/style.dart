import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:tester/Screens/AcademicStaff/CourseAS.dart';
import 'package:tester/Screens/AcademicStaff/EFAcademicStaff.dart';
import 'package:tester/Screens/AcademicStaff/homePageAS.dart';
import 'package:tester/Screens/Administrator/CourseAdmin.dart';
import 'package:tester/Screens/Administrator/EFAdmin.dart';

import 'package:tester/Screens/Administrator/homepage_administrator.dart';
import 'package:tester/Screens/Student/AttendancePageStudent.dart';
import 'package:tester/Screens/Student/QRCodePageStudent.dart';

import 'package:tester/Screens/Student/homePageStudent.dart';
import 'package:tester/Screens/main.dart';
import 'package:tester/Screens/profile.dart';

class Text_Field extends StatelessWidget {
  final String label;
  final bool secure;
  @override
  const Text_Field({Key key, this.label, this.secure}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 40,
        margin: EdgeInsets.only(bottom: 10),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(), labelText: this.label),
          obscureText: secure,
        ));
  }
}

class SubmitButtons extends StatelessWidget {
  @override
  final String text;
  const SubmitButtons({Key key, this.text}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
        width: 150,
        height: 40,
        margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
        alignment: Alignment.center,
        child: RaisedButton(
          color: Color(0xFF98D1D4),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(6))),
          child: Text(
            this.text,
            style: TextStyle(color: Colors.white, fontSize: 15),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            runApp(Profile());
          },
        ));
  }
}

class MenuButtons extends StatelessWidget {
  @override
  final String label;
  final Widget onpressed;
  const MenuButtons({Key key, this.label, this.onpressed}) : super(key: key);
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 75,
        margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: RaisedButton(
          color: Color(0xFF98D1D4),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text(
            this.label,
            style: TextStyle(color: Colors.white, fontSize: 30),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            //this.onpressed;
            runApp(EvaluationFormsAS());
          },
        ));
  }
}

class CoursesButtons extends StatelessWidget {
  @override
  final String label;
  final onpressed;
  final Color color;
  const CoursesButtons({Key key, this.label, this.onpressed, this.color})
      : super(key: key);
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        height: 75,
        margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: RaisedButton(
          color: this.color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Text(
            this.label,
            style: TextStyle(color: Colors.white, fontSize: 30),
            textAlign: TextAlign.center,
          ),
          onPressed: () {
            //this.onpressed;
            //runApp(this.onpressed);
          },
        ));
  }
}
