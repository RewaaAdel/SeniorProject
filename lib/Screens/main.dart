import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';
import 'package:tester/Screens/SignIn.dart';
import 'package:tester/Screens/signUp.dart';
import 'package:tester/Screens/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'dart:io' show Platform;
import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp checkpoint = await Firebase.initializeApp(
    name: 'checkpoint',
    options: FirebaseOptions(
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
        home: SignIn());
  }
}
