import 'package:flutter/material.dart';
import 'package:folk_quiz/home_screen.dart';

void main(){
  runApp(Folk());
}

class Folk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}