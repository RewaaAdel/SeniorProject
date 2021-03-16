import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/services/auth.dart';
import 'package:tester/Screens/signUp.dart';
import 'package:tester/Screens/style.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  void initState() {
    super.initState();
  }

  final AuthService _auth = AuthService();
  final _formkey = GlobalKey<FormState>();

  String email = '';
  String password = '';

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
          body: Center(
              child: ListView(
            children: [
              Align(alignment: Alignment.center),
              Container(
                margin: EdgeInsets.fromLTRB(0, 70, 0, 35),
                child: Image.asset(
                  'Assets/Checkpoint.png',
                  height: 100,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                  onChanged: (val) {
                    setState(() => email = val);
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Fill Email Input';
                    } else {
                      return ' ';
                    }
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    onChanged: (val) {
                      setState(() => password = val);
                    },
                    validator: (value) {
                      if (value.isEmpty) {
                        return Text('Please Fill Password Input').toString();
                      } else {
                        return ' ';
                      }
                    },
                  )),
              Container(
                child: TextButton(
                  child: Text("Forget my password"),
                  onPressed: () {},
                ),
              ),
              SubmitButtons(
                text: "Sign In",
                onpressed: () async {
                  print(email);
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
                            runApp(SignUp());
                          }),
                    ),
                  ]))
            ],
          ))),
    );
  }
}
