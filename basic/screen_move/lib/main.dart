import 'package:flutter/material.dart';
import 'package:screen_move/screen/ui/tamtam.dart';



void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TamTamScreen()
    );
  }
}
