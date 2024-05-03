import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Padding(
          padding: EdgeInsets.only(top:  40.0, left: 50.0),
        child: Text("하이")
      )

    );
  }
}
