import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/CourseAdmin.dart';
import 'package:tester/Screens/Student/CoursePageStudent.dart';

import 'package:tester/Screens/style.dart';

class homePageAdministrator extends StatelessWidget {
  // This widget is the root of your application.
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
            leading: IconButton(
              icon: Icon(Icons.list),
              onPressed: () {},
              color: Colors.grey,
              iconSize: 35,
              padding: EdgeInsets.all(12),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Align(alignment: Alignment.center),
            Container(
              margin: EdgeInsets.only(bottom: 70),
              child: Image.asset(
                'Assets/logopacity.png',
                height: 200,
              ),
            ),
            MenuButtons(
              label: "Courses",
            ),
            MenuButtons(
              label: "Evaluation Forms",
            ),
            MenuButtons(
              label: "Schedules",
            ),
          ])),
    );
  }
}
