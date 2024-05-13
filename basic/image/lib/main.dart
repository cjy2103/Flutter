import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          child:
              Column(
                children: [

                  SizedBox(height: 80.0),

                  Image.asset(
                    'assets/images/tamtam.jpg',
                    width: 200,
                    height: 200,
                  ),

                  SizedBox(height: 20.0),

                  Image.network(
                    'https://picsum.photos/200?image=1040',

                  ),
                SizedBox(height: 20.0),
                Image.network(
                  'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')
                ],
              )

          ,
        ),
      ),
    );
  }
}
