import 'package:athome/auth.dart';
import 'package:athome/home.dart';
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
