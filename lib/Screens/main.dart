import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';
import 'package:tester/Screens/signUp.dart';
import 'package:tester/Screens/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:io' show Platform;
import 'dart:async';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp(
    name: 'db2',
    options: Platform.isIOS || Platform.isMacOS
        ? FirebaseOptions(
            appId: '1:297855924061:ios:c6de2b69b03a5be8',
            apiKey: 'AIzaSyD_shO5mfO9lhy2TVWhfo1VUmARKlG4suk',
            projectId: 'flutter-firebase-plugins',
            messagingSenderId: '297855924061',
            databaseURL: 'https://flutterfire-cd2f7.firebaseio.com',
          )
        : FirebaseOptions(
            appId: '1:86142554462:android:4d6f2b8ad251b329267fcf',
            apiKey: 'AIzaSyD669XWo2VgWZ5N6cRwZqj_S7aju1d9EEQ',
            messagingSenderId: '297855924061',
            projectId: 'flutter-firebase-plugins',
            databaseURL: 'https://followup-b0716-default-rtdb.firebaseio.com',
          ),
  );
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
                    DatabaseReference def =
                        FirebaseDatabase.instance.reference().child('Test');
                    def.set('IsConnect');
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
