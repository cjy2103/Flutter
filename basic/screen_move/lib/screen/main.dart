import 'package:flutter/material.dart';
import 'package:screen_move/screen/tamtam.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TamTamScreen()
    );
  }
}
