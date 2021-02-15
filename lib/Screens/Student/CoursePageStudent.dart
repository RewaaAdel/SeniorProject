import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Student/homePageStudent.dart';

class CoursPageStudent extends StatelessWidget {
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
            body: Column(children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 30, 140, 0),
                height: 90,
                color: Colors.blueGrey[50],
                child: Center(
                  child: Text(
                    " Courses ",
                    style: TextStyle(fontSize: 30, color: Colors.grey[700]),
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.fromLTRB(50, 500, 50, 0),
                  child: Column(children: [
                    Center(
                        child: RaisedButton(
                      color: Colors.cyan[500],
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                        child: Text(
                          " Back ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      onPressed: () {
                        runApp(HomePageStudent());
                      },
                    ))
                  ])),
            ])));
  }
}
