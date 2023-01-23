import 'package:flutter/material.dart';
import 'package:flutter_pages/screens/login/login.dart';
import 'package:flutter_pages/utils/our_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: OurTheme().buildTheme(),
      home: OurLogin(),
    );
  }
}
