import 'package:flutter/material.dart';
import 'package:learning_flutter/Screens/Welcome/welcome_screen.dart';
import 'package:learning_flutter/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learning Flutter',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
      ),
      home: WelcomeScreen(),
    );
  }
}
