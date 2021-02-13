import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/signUp.dart';

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
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  color: Colors.grey,
                  width: 300,
                  child: TextButton(
                    child: Text(
                      "Courses",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    onPressed: () {
                      runApp(homePageAdministrator());
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  color: Colors.grey,
                  width: 300,
                  child: TextButton(
                    child: Text(
                      "Evaluation Forms",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    onPressed: () {
                      runApp(homePageAdministrator());
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  color: Colors.grey,
                  width: 300,
                  child: TextButton(
                    child: Text(
                      "Schedules",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    onPressed: () {
                      runApp(homePageAdministrator());
                    },
                  ),
                )
              ])),
    );
  }
}
