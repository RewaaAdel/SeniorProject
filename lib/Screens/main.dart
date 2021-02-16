import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Student/homePageStudent.dart';
import 'package:tester/Screens/signUp.dart';

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
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "E-mail"),
                  )),
              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Password")),
              ),
              Container(
                child: TextButton(
                  child: Text("Forget my password"),
                  onPressed: () {
                    runApp(signUp());
                  },
                ),
              ),
              Container(
                  width: 150,
                  height: 40,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: RaisedButton(
                    color: Color(0xFF98D1D4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(6))),
                    child: Text(
                      " Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    onPressed: () {
                      runApp(HomePageStudent());
                    },
                  )),
              Container(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Container(
                      child: Text(
                        "I don\' have an account,",
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
