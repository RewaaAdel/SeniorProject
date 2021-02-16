//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:tester/Screens/main.dart';
import 'package:tester/Screens/style.dart';

class signUp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  String position;
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(70, 0, 70, 70),
                  child: Image.asset(
                    'Assets/logowithname.png',
                    height: 200,
                  ),
                ),
                Text_Field(label: "Name", secure: false),
                Text_Field(label: "Email", secure: false),
                Text_Field(label: "Id Number", secure: false),
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  margin: EdgeInsets.only(bottom: 10),
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4)),
                  child: DropdownButton(
                    isExpanded: true,
                    hint: Text("Position"),
                    value: position,
                    onChanged: (value) {
                      //setState(() {
                      //position = value;
                      //});
                    },
                    items: ['Academic Staff', 'Student'].map((value) {
                      return new DropdownMenuItem(
                          value: value,
                          child: Text(
                            value,
                          ));
                    }).toList(),
                  ),
                ),
                Text_Field(label: "Password", secure: true),
                SubmitButtons(text: "Sign Up"),
                Container(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Container(
                        child: Text(
                          "Already have an account?",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          child: Text("Sign in"),
                          onPressed: () {
                            runApp(MyApp());
                          },
                        ),
                      )
                    ]))
              ],
            )));
  }
}
