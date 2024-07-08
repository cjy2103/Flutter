import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage>{
  bool isEmailSelected = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          SizedBox(height: 100.0,),

          // 상단에 고정된 버튼들
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    isEmailSelected = true;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: isEmailSelected ? Colors.black : Colors.white,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    '이메일로 찾기',
                    style: TextStyle(
                      color: isEmailSelected ? Colors.white : Colors.black,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isEmailSelected = false;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    color: isEmailSelected ? Colors.white : Colors.black,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8),
                    ),
                  ),
                  child: Text(
                    '휴대전화로 찾기',
                    style: TextStyle(
                      color: isEmailSelected ? Colors.black : Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 32),
          // 하단에 변경되는 위젯들
          Expanded(
            child: isEmailSelected ? EmailWidget() : PhoneWidget(),
          ),
        ],
      ),
    );
  }
}

class EmailWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 30.0,right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('이름'),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '이름',
            ),
          ),
          SizedBox(height: 16),
          Text('휴대전화 번호'),
          SizedBox(height: 8),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '휴대전화 번호',
            ),
          ),
          SizedBox(height: 16),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                // 아이디 찾기 로직
              },
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.grey),
              ),
              child: Text('아이디 찾기'),
            ),
          ),
        ],
      ),
    );
  }
}

class PhoneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('휴대전화로 아이디 찾기 위젯'),
    );
  }
}