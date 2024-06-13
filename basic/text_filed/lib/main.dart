import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100.0),

              SizedBox(
                width: 300.0,
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Text',
                  ),
                ),
              ),

              SizedBox(height: 50.0,),

              ElevatedButton(
                onPressed: () {
                  // 버튼이 눌리면 입력된 텍스트를 출력합니다.
                  print('Entered text: ${textEditingController.text}');
                },
                child: const Text('Submit'),
              ),
            ],
          )
        ),
      ),
    );
  }
}
