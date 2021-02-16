import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';

class Profile extends StatelessWidget {
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
                "Profile",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF525151),
                ),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  runApp(homePageAdministrator());
                },
                color: Color(0xFF525151),
                iconSize: 20,
                padding: EdgeInsets.only(left: 20),
              ),
            ),
            body: ListView(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 99,
                        child: Text(
                          "Name",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        padding: EdgeInsets.fromLTRB(5, 10, 20, 10),
                        margin: EdgeInsets.only(right: 20),
                        color: Color(0xFF98D1D4),
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Ahmad Mohammed",
                          style:
                              TextStyle(color: Color(0xFF525151), fontSize: 20),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 10, 5, 10),
                        color: Color(0xFFD9D9D9),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 20),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 99,
                        child: Text(
                          "Id",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        padding: EdgeInsets.fromLTRB(5, 10, 20, 10),
                        margin: EdgeInsets.only(right: 20),
                        color: Color(0xFF98D1D4),
                      ),
                      Container(
                        child: Text(
                          "1234567",
                          style:
                              TextStyle(color: Color(0xFF525151), fontSize: 20),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 10, 5, 10),
                        color: Color(0xFFD9D9D9),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 20),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 99,
                        child: Text(
                          "Position",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        padding: EdgeInsets.fromLTRB(5, 10, 20, 10),
                        margin: EdgeInsets.only(right: 20),
                        color: Color(0xFF98D1D4),
                      ),
                      Container(
                        child: Text(
                          "Administrator",
                          style:
                              TextStyle(color: Color(0xFF525151), fontSize: 20),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 10, 5, 10),
                        color: Color(0xFFD9D9D9),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 20),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 99,
                        child: Text(
                          "Email",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        padding: EdgeInsets.fromLTRB(5, 10, 20, 10),
                        margin: EdgeInsets.only(right: 20),
                        color: Color(0xFF98D1D4),
                      ),
                      Container(
                        child: Text(
                          "AhmadMohammed@gmail.com",
                          style:
                              TextStyle(color: Color(0xFF525151), fontSize: 20),
                        ),
                        padding: EdgeInsets.fromLTRB(20, 10, 5, 10),
                        color: Color(0xFFD9D9D9),
                      )
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 20),
                ),
                Container(
                    width: 150,
                    height: 40,
                    margin: EdgeInsets.fromLTRB(0, 40, 0, 15),
                    child: RaisedButton(
                      color: Color(0xFF98D1D4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                      child: Text(
                        " Edif",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      onPressed: () {},
                    )),
              ],
            )));
  }
}
