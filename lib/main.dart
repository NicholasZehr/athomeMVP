// ignore: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart'

void main() async => {await Firebase.initializeApp(), runApp(const MyApp())};

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [],
    child: MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[900]),
        home: const AuthenticationWrapper())
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  const AuthenticationWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
