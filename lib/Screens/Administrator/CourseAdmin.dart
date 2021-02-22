import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';

class CourseAdmin extends StatelessWidget {
  // This widget is the root of your application.
  final FirebaseDatabase database = FirebaseDatabase.instance;
  TextEditingController _nameController = TextEditingController();
  TextEditingController _numberController = TextEditingController();
  TextEditingController _supervisorController = TextEditingController();
  TextEditingController _clincNumberController = TextEditingController();

  void newCourse() async {
    DatabaseReference newCourse = FirebaseDatabase.instance
        .reference()
        .child('course')
        .child(FirebaseAuth.instance.currentUser.uid);
    Map courseMap = {
      'name': _nameController.text,
      'number': _numberController,
      'supervisor': _supervisorController,
      'clincNumber': _clincNumberController
    };
    newCourse.set(courseMap);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Color(0xFFD9D9D9),
              title: Text(
                "Courses",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF525151),
                ),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  runApp(homePageAdministrator());
                },
                color: Color(0xFF525151),
                iconSize: 20,
                padding: EdgeInsets.only(left: 20),
              ),
            )));
  }
}
