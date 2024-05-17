

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


import '../../util/url_loader.dart';
import 'leechunhyang.dart';

class TamTamScreen extends StatelessWidget {
  const TamTamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80.0),

            Image.asset(
              'assets/images/tamtam.jpg',
              width: 200,
              height: 200,
            ),
            Text('탬탬버린'),
            SizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '유튜브 주소: ',
                    style: TextStyle(color: Colors.black),
                  ),
                  TextSpan(
                      text: 'https://www.youtube.com/@chamcham2',
                      style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()..onTap = () async {
                        await Util().launchYouTubeChannel('https://www.youtube.com/@chamcham2');
                      }
                  ),
                ],
              ),
            ),

            SizedBox(height: 30.0),

            OutlinedButton( onPressed: () {
              // 나중에 화면 이동예제 쓸것.
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LeeChunhyangScreen()),
              );
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
    );
  }
}