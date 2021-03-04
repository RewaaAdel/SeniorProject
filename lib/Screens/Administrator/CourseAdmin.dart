import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';

import '../style.dart';

final database = FirebaseDatabase.instance.reference();

class CourseAdmin extends StatefulWidget {
  State<StatefulWidget> createState() {
    return CourseAdminState();
  }
}

class CourseAdminState extends State<CourseAdmin> {
  // This widget is the root of your application.

  final _formkey = GlobalKey<FormState>();

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
                "Courses",
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
            body: ListView(key: _formkey, children: [
              Align(
                alignment: Alignment.center,
              ),
              SubmitButtons(
                  text: "Add Course",
                  onpressed: () {
                    runApp(AddCourse());
                  }),
              SubmitButtons(
                  text: "Update",
                  onpressed: () {
                    runApp(AddCourse());
                  }),
            ])));
  }
}

//....................................Add Course.............................................................
class AddCourse extends StatefulWidget {
  AddCourse({Key key}) : super(key: key);

  @override
  _AddCourseState createState() => _AddCourseState();
}

class _AddCourseState extends State<AddCourse> {
  TextEditingController _courseNameController = TextEditingController();
  TextEditingController _courseNumberController = TextEditingController();
  TextEditingController _courseSupervisorController = TextEditingController();
  TextEditingController _clincNumberController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  DatabaseReference newCourse = database.child('course');
  //FirebaseDatabase.instance.reference().child('course');
  @override
  void dispose() {
    _courseNameController.dispose();
    _courseNumberController.dispose();
    _courseSupervisorController.dispose();
    _clincNumberController.dispose();

    super.dispose();
  }

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
                "Add Course",
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xFF525151),
                ),
              ),
              leading: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  runApp(CourseAdmin());
                },
                color: Color(0xFF525151),
                iconSize: 20,
                padding: EdgeInsets.only(left: 20),
              ),
            ),
            //-----------------------------------------------------------
            body: ListView(key: _formkey, children: [
              Align(
                alignment: Alignment.center,
              ),
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  child: TextFormField(
                    controller: _courseNameController,
                    decoration: InputDecoration(
                      hintText: 'Course Name',
                      labelText: 'Course Name',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                  )),
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  child: TextFormField(
                    controller: _courseNumberController,
                    decoration: InputDecoration(
                      hintText: 'Course Number',
                      labelText: 'Course Nymber',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                  )),
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  child: TextFormField(
                    controller: _courseSupervisorController,
                    decoration: InputDecoration(
                      hintText: 'Course Supervisor',
                      labelText: 'Course Supervisor',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                  )),
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  child: TextFormField(
                    controller: _clincNumberController,
                    decoration: InputDecoration(
                      hintText: 'Clinc Number',
                      labelText: 'Clinc Number',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                  )),
              SubmitButtons(
                  text: "Add Course",
                  onpressed: () {
                    addNewCourse();
                  }),
            ])));
  }

  void addNewCourse() {
    //.child(FirebaseAuth.instance.currentUser.uid);

    if (newCourse != null) {
      Map courseMap = {
        'courseName': _courseNameController.text,
        'courseNumber': _courseNumberController.text,
        'courseSupervisor': _courseSupervisorController.text,
        'clincNumber': _clincNumberController.text
      };
      newCourse.push().set(courseMap);

      runApp(CourseAdmin());
    }
  }

  void read() {
    var recentJobsRef = FirebaseDatabase.instance
        .reference()
        .child('course')
        .orderByChild('name');
  }
}
