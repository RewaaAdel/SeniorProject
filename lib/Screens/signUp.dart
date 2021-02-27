import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/SignIn.dart';
import 'package:tester/Screens/style.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String position;

  final FirebaseDatabase database = FirebaseDatabase.instance;
  final _formkey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _idController = TextEditingController();
  // TextEditingController _positionController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _idController.dispose();
    // _positionController.dispose();

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
            body: ListView(key: _formkey, children: [
              Align(
                alignment: Alignment.center,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 70, 0, 35),
                child: Image.asset(
                  'Assets/Checkpoint.png',
                  height: 100,
                ),
              ),
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      labelText: 'Name',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Fill Name Input';
                      } else {
                        return ' ';
                      }
                    },
                  )),
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 9),
                  child: TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      labelText: 'Email',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Fill Email Input';
                      } else {
                        return ' ';
                      }
                    },
                  )),
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  child: TextFormField(
                    controller: _idController,
                    decoration: InputDecoration(
                      hintText: 'Id Number',
                      labelText: 'Id Number',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Fill Id Number Input';
                      } else {
                        return ' ';
                      }
                    },
                  )),
              /* Text_Field(
                  controller: _nameController,
                  label: "Name",
                  secure: false,
                ),
                Text_Field(
                    controller: _emailController,
                    label: "Email",
                    secure: false),
                Text_Field(
                    controller: _idController,
                    label: "Id Number",
                    secure: false), */
              Container(
                height: 45,
                margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                // padding: EdgeInsets.only(left: 10, right: 10),
                //margin: EdgeInsets.only(bottom: 10),
                //  width: 300,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)),
                child: DropdownButtonFormField(
                  isExpanded: true,
                  hint: Text("  Position"),
                  value: position,
                  onChanged: (value) {
                    setState(() {
                      position = value;
                      // _positionController = value;
                    });
                  },
                  items: ['  Academic Staff', '  Student'].map((value) {
                    return new DropdownMenuItem(
                        value: value,
                        child: Text(
                          value,
                        ));
                  }).toList(),
                ),
              ),
              /* Text_Field(
                    controller: _passwordController,
                    label: "Password",
                    secure: true), */
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  child: TextFormField(
                    obscureText: true,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Fill Password Input';
                      } else {
                        return ' ';
                      }
                    },
                  )),
              SubmitButtons(
                  text: "Sign Up",
                  onpressed: () {
                    signUpProcess();
                  }),
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
                              runApp(SignIn());
                            }))
                  ]))
            ])));
  }

  void signUpProcess() async {
    var user = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text);

    if (user != null) {
      //  DatabaseReference newUser =
      //   FirebaseDatabase.instance.reference().child('user');
      // .child(FirebaseAuth.instance.currentUser.uid);
      if (position == '  Student') {
        DatabaseReference newUser = FirebaseDatabase.instance
            .reference()
            .child('user')
            .child('student');
        Map userMap = {
          'fullName': _nameController.text,
          'email': _emailController.text,
          'idNumber': _idController.text,
          'position': position,
          //_positionController.text,
          'password': _passwordController.text
        };
        newUser.push().set(userMap);
        runApp(SignIn());
      } else if (position == '  Academic Staff') {
        DatabaseReference newUser = FirebaseDatabase.instance
            .reference()
            .child('user')
            .child('academicStaff');
        Map userMap = {
          'fullName': _nameController.text,
          'email': _emailController.text,
          'idNumber': _idController.text,
          'position': position,
          //_positionController.text,
          'password': _passwordController.text
        };
        newUser.push().set(userMap);
        runApp(SignIn());
        /* Map userMap = {
        'fullName': _nameController.text,
        'email': _emailController.text,
        'idNumber': _idController.text,
        'position': position,
        //_positionController.text,
        'password': _passwordController.text
      };
      if (user != null) {
        newUser.push().set(userMap);
        runApp(SignIn());
      }*/
      } else {
        print('Try ag');
      }
    }
  }
}
