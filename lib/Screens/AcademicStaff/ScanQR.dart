import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/AcademicStaff/EvaluationFormsAS.dart';
import 'package:tester/Screens/AcademicStaff/homePageAS.dart';
import 'package:tester/Screens/style.dart';

class ScanQR extends StatefulWidget {
  State<StatefulWidget> createState() {
    return ScanQRState();
  }
}

class ScanQRState extends State<ScanQR> {
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
            backgroundColor: Color(0xFFD9D9D9),
            title: Text(
              "Scannnig..",
              style: TextStyle(
                fontSize: 30,
                color: Color(0xFF525151),
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                runApp(homepageAS());
              },
              color: Color(0xFF525151),
              iconSize: 20,
              padding: EdgeInsets.only(left: 20),
            ),
          ),
          body: Container(),
        ));
  }
}
