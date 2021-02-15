import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/CourseAdmin.dart';
import 'package:tester/Screens/Administrator/EFAdmin.dart';
import 'package:tester/Screens/Administrator/SchedulesAdmin.dart';
import 'package:tester/Screens/profile.dart';

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
          body: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(70, 0, 70, 70),
                  child: Image.asset(
                    'Assets/logowithnoname.png',
                    height: 200,
                  ),
                ),
                Container(
                    width: 300,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: RaisedButton(
                      color: Color(0xFF98D1D4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        " Courses",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      onPressed: () {
                        runApp(CourseAdmin());
                      },
                    )),
                Container(
                    width: 300,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: RaisedButton(
                      color: Color(0xFF98D1D4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        " Evaluation Forms",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      onPressed: () {
                        runApp(EFAdmin());
                      },
                    )),
                Container(
                    width: 300,
                    height: 60,
                    margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                    child: RaisedButton(
                      color: Color(0xFF98D1D4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Text(
                        " Schedules",
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      onPressed: () {
                        runApp(SchedulesAdmin());
                      },
                    )),
              ])),
    );
  }
}
