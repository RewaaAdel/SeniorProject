import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/SignIn.dart';
import 'package:tester/Screens/services/auth.dart';
import 'package:tester/Screens/style.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  String name = '';
  String id = '';
  String email = '';
  String password = '';
  String position = '';
  String error = '';

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
//................................ Name Container.....................................
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Name',
                        labelText: 'Name',
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                      onChanged: (val) {
                        setState(() => name = val);
                      },
                      validator: (value) =>
                          value.isEmpty ? 'Enter a Full Name Please' : null)),
//................................ Email Container.....................................
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 9),
                  child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email',
                        labelText: 'Email',
                        border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(4))),
                      ),
                      onChanged: (val) {
                        setState(() => email = val);
                      },
                      validator: (value) =>
                          value.isEmpty ? 'Enter the Email Please' : null)),
              //................................ Id Number Container.....................................
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Id Number',
                      labelText: 'Id Number',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                    onChanged: (val) {
                      setState(() => id = val);
                    },
                  )),
//................................ Position Container.....................................
              Container(
                height: 45,
                margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(4)),
                child: DropdownButtonFormField(
                  isExpanded: true,
                  hint: Text("  Position"),
                  value: position,
                  validator: (value) =>
                      value.isEmpty ? 'Choose the Position Please' : null,
                  onChanged: (value) {
                    setState(() {
                      position = value;
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
//................................ Password Container.....................................
              Container(
                  height: 45,
                  margin: EdgeInsets.symmetric(horizontal: 70, vertical: 5),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4))),
                    ),
                    validator: (value) => value.length < 6
                        ? 'Enter a password with 6+ Please'
                        : null,
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                  )),
              SubmitButtons(
                  text: "Sign Up",
                  onpressed: () async {
                    if (_formkey.currentState.validate()) {
                      dynamic result =
                          await _auth.registerProcess(email, password);
                      if (result == null) {
                        setState(() => error = 'Check Your Input Agean');
                      } else {
                        runApp(SignIn());
                      }
                    }
                  }),
                  Container(
                    child: SizedBox(
                      height: 12,
                      child: Text(
                        error,
                        style: TextStyle(color: Colors.red),
                      ),
                    ),
                  ),
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
}
