import 'package:firebase_auth/firebase_auth.dart';

class LoginViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> loginUser(String email, String password) {
    return _auth.signInWithEmailAndPassword(email: email, password: password);
  }
}