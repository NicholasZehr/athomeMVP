import 'package:athome/screens/auth/authentication_screen.dart';
import 'package:athome/screens/home/home_screens.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        //return home or authenticate widget
        const Authenticate();
  }
}
