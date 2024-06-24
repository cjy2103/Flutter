

import 'package:flutter/material.dart';

import 'custom_dialog.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 50.0),
              ElevatedButton(onPressed: (){
                  showDialog(context: context, builder: (BuildContext context){
                      return CustomDialog();
                  });
              }, child: const Text("다이얼로그 열기",
                style: TextStyle(color: Colors.black),)
                ,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    foregroundColor: Colors.red
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
