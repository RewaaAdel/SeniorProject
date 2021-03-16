import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/AcademicStaff/homePageAS.dart';
import 'package:tester/Screens/Administrator/CourseInfo.dart';
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
              SizedBox(
                height: 20,
              ),
              CoursesButtons(
                label: "OMR 312",
                color: Color(0xFF92D050),
                onpressed: () {
                  runApp(CourseInfo());
                },
              ),
              CoursesButtons(
                label: "OMR 511",
                color: Color(0xFFC697F6),
                onpressed: () {
                  runApp(CourseInfo());
                },
              ),
              CoursesButtons(
                label: "OMR 611",
                color: Color(0xFFB4C6E7),
                onpressed: () {
                  runApp(CourseInfo());
                },
              ),
              CoursesButtons(
                label: "SURD 401",
                color: Color(0xFFF6CAAC),
                onpressed: () {
                  runApp(CourseInfo());
                },
              ),
              SizedBox(
                height: 20,
              ),
              SubmitButtons(
                  text: "Add Course",
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
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 35,
              ),
              buildTextField("Course code", ""),
              buildTextField("Course name", ""),
              buildTextField("Year", ""),
              buildTextField("Semester", ""),
              buildTextField("Crediet hours", ""),
              buildTextField("Practical", ""),
              buildTextField("Evaluation form MPE", ""),
              buildTextField("No.", ""),
              buildTextField("Exam form CE", ""),
              SizedBox(
                height: 35,
              ),
              SubmitButtons(
                text: "Save",
                onpressed: () {},
              ),
              SizedBox(
                height: 35,
              ),
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

Widget buildTextField(String labelText, String placeholder) {
  return Container(
    margin: EdgeInsets.only(left: 30, right: 30),
    padding: const EdgeInsets.only(bottom: 35.0),
    child: TextField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(bottom: 3),
          labelText: labelText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: placeholder,
          hintStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )),
    ),
  );
}
