// ignore: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async => {await Firebase.initializeApp(), runApp(const App())};

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return SomethingWentWrong();
          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MyApp();
          }

          return Loading();
        });
  }
}
