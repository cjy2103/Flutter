import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: SignUpScreen()
    );
  }
}

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  int currentStep = 0;

  void nextStep() {
    setState(() {
      if(currentStep < 2){
        currentStep++;
      }
    });
  }

  void previousStep(){
    setState(() {
      if(currentStep > 0){
        currentStep--;
      }
    });
  }

  Widget buildStepIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildStep(0, '전화 인증'),
        buildLine(),
        buildStep(1, '정보 입력'),
        buildLine(),
        buildStep(2, '가입 완료'),
      ],
    );
  }


  Widget buildStep(int step, String title) {
  bool isActive = currentStep >= step;
  return Column(
      children: [
        CircleAvatar(
          radius: 16.0,
          backgroundColor: isActive ? Colors.black : Colors.white,
          // backgroundColor: currentStep == step ? Colors.black : Colors.white,
          child: Text(
            '${step + 1}',
            style: TextStyle(
              color: isActive ? Colors.white : Colors.black,
              // color: currentStep == step ? Colors.white : Colors.black,
            ),
          ),
        ),
        SizedBox(height: 4.0),
        Text(title),
      ],
    );
  }

  Widget buildLine() {
    return Expanded(
      child: Container(
        height: 2.0,
        color: Colors.black,
      ),
    );
  }

  Widget buildStepContent() {
    switch (currentStep) {
      case 0:
        return buildStep1();
      case 1:
        return buildStep2();
      case 2:
        return buildStep3();
      default:
        return buildStep1();
    }
  }

  Widget buildStep1() {
    return Column(
      children: [
        Text('전화 인증'),
        ElevatedButton(onPressed: nextStep, child: Text('다음'))
      ],
    );
  }

  Widget buildStep2() {
    return Column(
      children: [
        Text('정보 입력'),
        ElevatedButton(onPressed: previousStep, child: Text('이전')),
        ElevatedButton(onPressed: nextStep, child: Text('다음')),
      ],
    );
  }

  Widget buildStep3(){
    return Column(
      children: [
        Text('가입 완료'),
        ElevatedButton(onPressed: previousStep, child: Text('이전'))
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('회원가입'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: buildStepIndicator(),
          ),
          Expanded(
            child: Center(
              child: buildStepContent(),
            ),
          ),
        ],
      ),
    );
  }

}

