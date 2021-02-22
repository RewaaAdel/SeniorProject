import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/SchedulesAdmin.dart';
import 'package:tester/Screens/Student/AttendancePageStudent.dart';
import 'package:tester/Screens/Student/CoursePageStudent.dart';
import 'package:tester/Screens/Student/QRCodePageStudent.dart';
import 'package:tester/Screens/bloc.navigation_bloc/navigation_bloc.dart';
import 'package:tester/Screens/style.dart';

class HomePageStudent extends StatefulWidget with NavigationStates {
  State<StatefulWidget> createState() {
    return HomePageStudentState();
  }
}

class HomePageStudentState extends State<HomePageStudent> {
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
              actions: [
                IconButton(
                  icon: Icon(Icons.list),
                  onPressed: () {},
                  color: Colors.grey,
                  iconSize: 35,
                  padding: EdgeInsets.all(12),
                ),
              ],
              backgroundColor: Colors.white,
              elevation: 0,
            ),
            body: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(alignment: Alignment.center),
                Container(
                    margin: EdgeInsets.fromLTRB(70, 0, 70, 70),
                    child: Image.asset(
                      'Assets/CheckpointOpacity.png',
                      height: 100,
                    )),
                MenuButtons(
                  label: "Courses",
                  onpressed: () {
                    runApp(CoursPageStudent());
                  },
                ),
                MenuButtons(
                  label: "QR Code",
                  onpressed: () {
                    runApp(QRCodePageStudent());
                  },
                ),
                MenuButtons(
                  label: "Attendance Report",
                  onpressed: () {
                    runApp(AttendancePageStudent());
                  },
                ),
                MenuButtons(
                  label: "Schedule",
                  onpressed: () {
                    runApp(SchedulesAdmin());
                  },
                ),
              ],
            ))));
  }
}
