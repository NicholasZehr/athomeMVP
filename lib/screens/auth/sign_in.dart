import 'package:athome/firebase/auth_logic.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthFire _auth = AuthFire();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[200],
        appBar: AppBar(
          backgroundColor: Colors.teal[400],
          title: const Text('Sign In'),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
          child: ElevatedButton(
            child: const Text('Try Me!'),
            onPressed: () async {
              dynamic userAnon = await _auth.signInAnon();
              print(userAnon);
            },
          ),
        ));
  }
}
