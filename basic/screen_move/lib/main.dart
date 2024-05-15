import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 80.0),

              Image.asset(
                'assets/images/tamtam.jpg',
                width: 200,
                height: 200,
              ),
                Text("탬탬버린"),
                SizedBox(height: 10.0),
                Text("유튜브 주소 : https://www.youtube.com/@chamcham2"),
                SizedBox(height: 30.0),

              OutlinedButton( onPressed: () {
                print("OutlinedButton 클릭됨");
              },
                child: Text(
                    "이쭈냥이오"
                    , style: TextStyle(color: Colors.black)),
                style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Colors.pink)
                ),

              ),


            ],
          ),
        ),
      ),
    );
  }
}
