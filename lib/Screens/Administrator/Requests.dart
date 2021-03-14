import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/AcademicStaff/homePageAS.dart';
import 'package:tester/Screens/Sidebar/sidebar_layout.dart';
import 'package:tester/Screens/bloc.navigation_bloc/navigation_bloc.dart';

class Requests extends StatefulWidget with NavigationStates {
  State<StatefulWidget> createState() {
    return RequestsState();
  }
}

class RequestsState extends State<Requests> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            backgroundColor: Colors.white),
        home: Scaffold(
          body: requestList(),
        ));
  }

  Widget requestList() {
    List fullNames = [
      "Shahad Harith",
      "Rewaa Alalawi",
      "Ameera Alofi",
      "ff",
      "fff",
      "sdfghj",
      "sdfghjk",
      "rftgyhjuk"
    ];

    List idNumbers = [
      "1234567",
      "1234567",
      "1234567",
      "123456",
      "23456",
      "1234567",
      "123456",
      "123456"
    ];
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        margin: EdgeInsets.only(left: 25, top: 10),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Container(
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(fullNames[index],
                            style:
                                TextStyle(color: Colors.black, fontSize: 18)),
                        Text("Student or Academic Staff",
                            style: TextStyle(color: Colors.grey)),
                        Text(idNumbers[index],
                            style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: FlatButton(
                    onPressed: () {},
                    color: Color(0xFF98D1D4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      "Activate",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
