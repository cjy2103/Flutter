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
  bool goOut = false;
  bool playSports = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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

            SizedBox(height: 20),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      goOut = !goOut;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      SizedBox(width: 80.0,),

                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: goOut
                              ? Icon(Icons.check, size: 15.0)
                              : Container(),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text('외출하기'),
                    ],
                  ),
                ),
                SizedBox(width: 80.0), // 체크박스 간 간격 조정
                GestureDetector(
                  onTap: () {
                    setState(() {
                      playSports = !playSports;
                    });
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        width: 20.0,
                        height: 20.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: playSports
                              ? Icon(Icons.check, size: 15.0)
                              : Container(),
                        ),
                      ),
                      SizedBox(width: 8.0),
                      Text('운동하기'),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              '현재 외출상태: $goOut',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20.0,),
            Text(
              '현재 운동중 상태: $playSports',
              style: TextStyle(fontSize: 20),
            )
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