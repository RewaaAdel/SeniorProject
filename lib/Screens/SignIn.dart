import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tester/Screens/Administrator/homepage_administrator.dart';
import 'package:tester/Screens/signUp.dart';
import 'package:tester/Screens/style.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  void initState() {
    super.initState();
  }

  final _formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
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
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(alignment: Alignment.center),
              Container(
                margin: EdgeInsets.fromLTRB(0, 70, 0, 35),
                child: Image.asset(
                  'Assets/Checkpoint.png',
                  height: 100,
                ),
              ),
              /* Text_Field(
                  controller: _emailController,
                  label: "Email or Id",
                  secure: false),
              Text_Field(
                  controller: _passwordController,
                  label: "Password",
                  secure: true),*/
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                child: TextFormField(
                  controller: _emailController,
                  obscureText: false,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    labelText: 'Email',
                    border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
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
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      labelText: 'Password',
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please Fill Password Input';
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
                onpressed: () {
                  signInProcess();
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

  void signInProcess() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: _emailController.text, password: _passwordController.text);

    runApp(homePageAdministrator());
  }
}
