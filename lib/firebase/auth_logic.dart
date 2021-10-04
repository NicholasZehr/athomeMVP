import 'package:firebase_auth/firebase_auth.dart';

class AuthFire {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  //create current user object from auth
  //auth user stream to tell whether or not someone is logged in

  // sign in (Anonymously)
  Future signInAnon() async {
    try {
      UserCredential result = await _auth.signInAnonymously();
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return 'Failed to sign in anonymously';
    }
  }

  // sign in (Email and password)
  Future singInEmail(email, password) async {
    try {
      UserCredential result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return 'Failed to sign in with Email';
    }
  }

  // register new account (Email and password)
  Future registerEmail(email, password) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      User? user = result.user;
      return user;
    } catch (e) {
      print(e.toString());
      return 'Failed to register user';
    }
  }
  // sign out

  Future singOutUser() async {
    try {
      await _auth.signOut();
    } catch (e) {
      print(e.toString());
      return 'Failed sign out Function';
    }
  }
}
