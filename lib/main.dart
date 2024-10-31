import 'package:flutter/material.dart';
import 'package:pepe/welcome.dart';
void main (){

    runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomeScreen(),
    );
  }
}

