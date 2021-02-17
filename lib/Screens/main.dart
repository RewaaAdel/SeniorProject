import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/AcademicStaff/homePageAS.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';
import 'package:tester/Screens/Student/homePageStudent.dart';
import 'package:tester/Screens/signUp.dart';
import 'package:tester/Screens/style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(alignment: Alignment.center),
              Container(
                margin: EdgeInsets.fromLTRB(70, 0, 70, 70),
                child: Image.asset(
                  'Assets/logowithname.png',
                  height: 200,
                ),
              ),
              Text_Field(label: "Email or Id", secure: false),
              Text_Field(label: "Password", secure: true),
              Container(
                child: TextButton(
                  child: Text("Forget my password"),
                  onPressed: () {
                    runApp(signUp());
                  },
                ),
              ),
              SubmitButtons(
                text: "Sign In",
                onpressed: () {
                  runApp(homePageAdministrator());
                },
              ),
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Container(
                      child: Text(
                        "Don\' have an account?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        child: Text("Sign up"),
                        onPressed: () {
                          runApp(signUp());
                        },
                      ),
                    )
                  ]))
            ],
          )),
    );
  }
}
