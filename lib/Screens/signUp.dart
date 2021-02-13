//import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';
import 'package:tester/Screens/main.dart';

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
                Container(
                    width: 300,
                    height: 40,
                    margin: EdgeInsets.only(bottom: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Name"),
                    )),
                Container(
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.only(bottom: 10),
                  child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "E-mail")),
                ),
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
                Container(
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextField(
                      //keyboardType: PasswordCredential(),
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Password")),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  color: Colors.grey,
                  width: 150,
                  child: TextButton(
                    child: Text(
                      "Sign up",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                    onPressed: () {
                      runApp(homePageAdministrator());
                    },
                  ),
                ),
                Container(
                  child: Text("I already hava an account, ",
                      style: TextStyle(
                        color: Colors.grey[600],
                      )),
                ),
                Container(
                  child: TextButton(
                    child: Text("Sign in"),
                    onPressed: () {
                      runApp(MyApp());
                    },
                  ),
                )
              ],
            )));
  }
}
