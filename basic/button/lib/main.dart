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
        body: Center(
          child : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              const SizedBox(height: 50.0),

              TextButton( onPressed: () {
                  print("TextButton 클릭됨");
              },
                  child: const Text("TextButton")),

              const SizedBox(height: 20.0),

              OutlinedButton( onPressed: () {
                  print("OutlinedButton 클릭됨");
              },
                  child: Text(
                    "OutlinedButton"
                    , style: TextStyle(color: Colors.black)),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.blue)
                ),

              ),

              const SizedBox(height: 20.0),

              ElevatedButton(onPressed: (){

              }, child: const Text("ElevatedButton",
                style: TextStyle(color: Colors.black),)
                ,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlueAccent,
                  foregroundColor: Colors.red
                ),

              ),

              const SizedBox(height: 20.0),

              IconButton(onPressed: (){
                print("카페인이 부족해");
              }, icon: Icon(Icons.coffee_sharp,
                )
              )
            ],
          )
        )
      ),
    );
  }
}
