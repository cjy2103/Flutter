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
  FocusNode emailFocusNode = new FocusNode();
  FocusNode passwordFocusNode = new FocusNode();

  bool isButtonEnabled = false;
  bool isPasswordObscured = true;


  @override
  void initState() {
    super.initState();
    emailEditingController.addListener(() {
      setState(() {
        isButtonEnabled = emailEditingController.text.isNotEmpty;
      });
    });

    passwordEditingController.addListener(() {
      setState(() {});
    });

  }

  void _togglePasswordVisibility(){
    setState(() {
      isPasswordObscured = !isPasswordObscured;
    });
  }

  @override
  void dispose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();
    emailFocusNode.dispose();
    passwordFocusNode.dispose();
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
                  focusNode: emailFocusNode,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.grey),
                    floatingLabelStyle: TextStyle(
                      color: emailFocusNode.hasFocus ? Colors.blue : Colors.grey,
                    ),

                      prefixIcon: Icon(Icons.email),
                    suffixIcon: emailEditingController.text.isNotEmpty
                        ? IconButton(
                      icon: const Icon(Icons.cancel),
                      onPressed: () {
                        emailEditingController.clear();
                      },
                    )
                        : null,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0)
                    )
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              SizedBox(
                width: 300.0,
                child: TextField(
                  controller: passwordEditingController,
                  focusNode: passwordFocusNode,
                  obscureText: isPasswordObscured,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Password',
                    labelStyle: TextStyle(color: Colors.grey),
                      floatingLabelStyle: TextStyle(
                        color: passwordFocusNode.hasFocus ? Colors.blue : Colors.grey,
                      ),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        isPasswordObscured ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: (){
                        _togglePasswordVisibility();
                      }
                      ,
                    ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue, width: 2.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 1.0)
                      )
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: isButtonEnabled ? () {
                  // 버튼이 눌리면 입력된 패스워드를 Text 위젯에 전달
                  setState(() {
                    password = passwordEditingController.text;
                  });
                } : null,
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