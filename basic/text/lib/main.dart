import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body : Padding(padding: EdgeInsets.only(top:  40.0, left: 20.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("하이"),
              SizedBox(height: 10),
              Text("Hello", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.normal,
                decoration: TextDecoration.none,
                color: Colors.black
                )
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("메이플 볼드체", style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'MapleStoryBold',
                    color: Colors.lightBlueAccent
                    )
                  ),
                  SizedBox(width: 10),
                  Text("메이플 라이트체", style: TextStyle(
                    fontSize: 22,
                    fontFamily: 'MapleStoryLight',
                    color: Colors.tealAccent
                    )
                  )
                ],
              )
            ],
          )
        )
      )
    );
  }
}
