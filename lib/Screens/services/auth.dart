import 'package:firebase_auth/firebase_auth.dart';
import 'package:tester/Screens/model/student.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //creat user object
  Student _userFromFire(FirebaseUser user) {
    return user != null ? Student(uid: user.uid) : null;
  }

// auth change user strem
  Stream<Student> get user {
    return _auth.onAuthStateChanged.map(_userFromFire);
  }

  Future signInAnon() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      return _userFromFire(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
