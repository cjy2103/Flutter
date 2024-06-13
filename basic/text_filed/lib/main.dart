import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final TextEditingController emailEditingController = TextEditingController();
  final TextEditingController passwordEditingController = TextEditingController();
  String password = '';

  @override
  void initState() {
    super.initState();
    emailEditingController.addListener(() {
      setState(() {});
    });

    passwordEditingController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100.0),
              SizedBox(
                width: 300.0,
                child: TextField(
                  controller: emailEditingController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    suffixIcon: emailEditingController.text.isNotEmpty
                        ? IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () {
                        emailEditingController.clear();
                      },
                    )
                        : null,
                    
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              SizedBox(
                width: 300.0,
                child: TextField(
                  controller: passwordEditingController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: passwordEditingController.text.isNotEmpty
                        ? IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () {
                        passwordEditingController.clear();
                      },
                    )
                        : null,
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {
                  // 버튼이 눌리면 입력된 패스워드를 Text 위젯에 전달
                  setState(() {
                    password = passwordEditingController.text;
                  });
                },
                child: const Text('Submit'),
              ),
              const SizedBox(height: 50.0),
              Text('Password: $password'),
            ],
          ),
        ),
      ),
    );
  }
}