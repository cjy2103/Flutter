import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    final TextEditingController emailEditingController = TextEditingController();
    final TextEditingController passwordEditingController = TextEditingController();

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 100.0),

              SizedBox(
                width: 300.0,
                child: TextField(
                  controller: emailEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'email',
                    prefixIcon: Icon(Icons.email)
                  ),
                ),
              ),

              SizedBox(height: 50.0,),

              SizedBox(
                width: 300.0,
                child: TextField(
                  controller: passwordEditingController,
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'password',
                      prefixIcon: Icon(Icons.lock)
                  ),
                ),
              ),

              SizedBox(height: 50.0,),

              ElevatedButton(
                onPressed: () {
                  // 버튼이 눌리면 입력된 텍스트를 출력합니다.
                  print('Entered text: ${emailEditingController.text}');
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
