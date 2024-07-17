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
            child: isEmailSelected
                ? InputWidget(
              title: '이메일',
              hintText: '이메일',
              nameController: TextEditingController(),
              controller: TextEditingController(),
            )
                : InputWidget(
              title: '휴대전화 번호',
              hintText: '휴대전화 번호',
              nameController: TextEditingController(),
              controller: TextEditingController(),
            ),
          ),
        ],
      ),
    );
  }
}

class InputWidget extends StatefulWidget {
  final String title;
  final String hintText;
  final TextEditingController controller;
  final TextEditingController nameController;

  InputWidget({required this.title, required this.hintText,, required this.nameController, required this.controller});

  @override
  _InputWidgetState createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    widget.nameController.addListener(_updateButtonState);
    widget.controller.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    setState(() {
      isButtonEnabled = widget.nameController.text.isNotEmpty && widget.controller.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    widget.nameController.dispose();
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('이름'),
          SizedBox(height: 8),
          TextField(
            controller: widget.nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: '이름',
            ),
          ),
          SizedBox(height: 16),
          Text(widget.title),
          SizedBox(height: 8),
          TextField(
            controller: widget.controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: widget.hintText,
            ),
          ),
          SizedBox(height: 16),
          SizedBox(
            width: 320.0,
            height: 40.0,
            child: ElevatedButton(
                onPressed: isButtonEnabled
                    ? () {
                  print("로그인");
                }
                    : null,
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>((states) {
                    if (states.contains(WidgetState.disabled)) {
                      return Colors.grey;
                    }
                    return Colors.black;
                  }),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                  shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                ),
                child: Text('로그인')),
          ),
        ],
      ),
    );
  }
}
