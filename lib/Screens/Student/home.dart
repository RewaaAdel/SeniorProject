import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [Text("ss")],
          ),
        ),
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                margin: EdgeInsets.fromLTRB(70, 0, 70, 70),
                child: Image.asset(
                  'images/Logo.jpg',
                  height: 200,
                )),
            //Cours button
            Container(
                width: 250,
                height: 60,
                child: RaisedButton(
                  color: Colors.grey[500],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    " Courses",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('Cours');
                  },
                )),
            Container(
              height: 16,
            ),
            //QR Code button
            Container(
                width: 250,
                height: 60,
                child: RaisedButton(
                  color: Colors.grey[500],
                  splashColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    " QR Code ",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('QRcode');
                  },
                )),
            Container(
              height: 16,
            ),
            // Attendance report Button
            Container(
                width: 250,
                height: 60,
                child: RaisedButton(
                  color: Colors.grey[500],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    " Attendance report ",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed('Attendance');
                  },
                )),
          ],
        )));
  }
}
