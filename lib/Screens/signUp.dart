import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class signUp extends StatelessWidget {
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
                  'Assets/logo2.png',
                  height: 200,
                ),
              ),
              Container(
                  width: 300,
                  height: 40,
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Name"),
                  )),
              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "E-mail")),
              ),
              new DropdownButton<String>(
                items:
                    <String>['Academic Staff', 'Student'].map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(
                      value,
                    ),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
              Container(
                width: 300,
                height: 40,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "Password")),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                color: Colors.grey,
                width: 150,
                child: TextButton(
                  child: Text(
                    "Sign up",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          )),
    );
  }
}
