
import 'package:firebase_auth/firebase_auth.dart';

class RegisterViewModel {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> registerUser(String email, String password) {
    return _auth.createUserWithEmailAndPassword(email: email, password: password);
  }
}
