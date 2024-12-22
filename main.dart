import 'package:flutter/material.dart';
import 'package:social_project/homeScreen.dart';
import 'package:social_project/loginPage.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.grey[500]),
      home:Loginpage(),
    );
  }
}
