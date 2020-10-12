import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<FirebaseUser> signInAnonymouse() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser firebaseUser = result.user;
      return firebaseUser;
    } catch (e) {
      print(e.toString());
      print("Ini Error");
      return null;
    }
  }

  static Future<FirebaseUser> signUp(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser firebaseUser = result.user;
      return firebaseUser;
    } catch(e) {
      print(e.toString());
      print("Error sign up");
    }
  }
  static Future<FirebaseUser> signIn(String email,String password) async {
    try{
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return result.user;
    }
    catch(e) {
      print(e.toString());
      print("Error login");
    }
  }

  static Future<void> signOut() {
    _auth.signOut();
  }

  static Stream<FirebaseUser> get firebaseUserStream =>
      _auth.onAuthStateChanged;
}
