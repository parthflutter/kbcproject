import 'package:flutter/material.dart';
import 'homepage.dart';
import 'output.dart';
import 'outputpage2.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=> HomePage(),
        'output': (context)=> OutPut(),
        'winner': (context)=> WinnerPage(),
      },
    ),
  );
}