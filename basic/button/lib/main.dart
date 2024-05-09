import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(padding: const EdgeInsets.only(top: 40.0, left: 20.0),
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton( onPressed: () {
                  print("TextButton 클릭됨");
              }, 
                  child: const Text("TextButton")),

              OutlinedButton( onPressed: () {
                  print("OutlinedButton 클릭됨");
              }, 
                  child: const Text("OutlinedButton")),

              ElevatedButton(onPressed: (){

              }, child: const Text("ElevatedButton")),

              List<bool> _selections = List.generate(3, (index) => false);

              ToggleButtons(children: [
                Icon(Icons.local_cafe),
                Icon(Icons.fastfood),
                Icon(Icons.cake)
              ], isSelected: _selections)
              
            ],
          )
        )
      ),
    );
  }
}
