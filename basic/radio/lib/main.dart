import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RadioGroupExample(),
    );
  }
}

class RadioGroupExample extends StatefulWidget {
  @override
  _RadioGroupExampleState createState() => _RadioGroupExampleState();
}

class _RadioGroupExampleState extends State<RadioGroupExample> {
  String _gender = '남자'; // 초기 선택 값

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildRadioOption('남자'),
                SizedBox(width: 50), // 원하는 간격 설정
                _buildRadioOption('여자'),
              ],
            ),
            SizedBox(height: 20), // 상하 간격 설정
            Text(
              '현재 선택된 성별: $_gender',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRadioOption(String value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Radio<String>(
          value: value,
          groupValue: _gender,
          activeColor: Colors.blue,
          onChanged: (String? newValue) {
            setState(() {
              _gender = newValue!;
            });
          },
        ),
        Text(value),
      ],
    );
  }
}