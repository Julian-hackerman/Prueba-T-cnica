import 'package:flutter/material.dart';

class WhiteScreen extends StatelessWidget {
  const WhiteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Finished task!',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontFamily: "UniteaSans"
          ),
        ),
      ),
    );
  }
} 