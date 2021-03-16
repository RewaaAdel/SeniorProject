import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';

import '../style.dart';


class CourseAdmin extends StatefulWidget {
  State<StatefulWidget> createState() {
    return CourseAdminState();
  }
}

class CourseAdminState extends State<CourseAdmin> {
  // This widget is the root of your application.

  final _formkey = GlobalKey<FormState>();

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
            ),
            body: ListView(key: _formkey, children: [
              Align(
                alignment: Alignment.center,
              ),
              SubmitButtons(
                  text: "Add Course",
                  onpressed: () {
                  }),
              SubmitButtons(
                  text: "Update",
                  onpressed: () {
                  }),
            ])));
  }
}
