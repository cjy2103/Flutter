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
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const SizedBox(height: 80.0),

              ElevatedButton(onPressed: (){
                  // 저장소 권한 요청
              }, child: const Text("저장소 권한 요청",
                style: TextStyle(color: Colors.black),)
                ,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    foregroundColor: Colors.red
                ),

              ),
            ],
            ),
          )
      ),
    );
  }
}
