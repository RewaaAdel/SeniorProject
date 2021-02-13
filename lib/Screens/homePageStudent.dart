import 'package:flutter/material.dart';
import 'package:tester/Screens/AttendancePageStudent.dart';
import 'package:tester/Screens/CoursePageStudent.dart';
import 'package:tester/Screens/QRCodePageStudent.dart';

class HomePageStudent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                    margin: EdgeInsets.fromLTRB(70, 0, 70, 70),
                    child: Image.asset(
                      'Assets/logowithnoname.png',
                      height: 200,
                    )),
                //Cours button
                Container(
                    width: 250,
                    height: 60,
                    child: RaisedButton(
                      color: Colors.grey[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        " Courses",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      onPressed: () {
                        runApp(CoursPageStudent());
                      },
                    )),
                Container(
                  height: 16,
                ),
                //QR Code button
                Container(
                    width: 250,
                    height: 60,
                    child: RaisedButton(
                      color: Colors.grey[500],
                      splashColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        " QR Code ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      onPressed: () {
                        runApp(QRCodePageStudent());
                      },
                    )),
                Container(
                  height: 16,
                ),
                // Attendance report Button
                Container(
                    width: 250,
                    height: 60,
                    child: RaisedButton(
                      color: Colors.grey[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        " Attendance report ",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      onPressed: () {
                        runApp(AttendancePageStudent());
                      },
                    )),
              ],
            ))));
  }
}
