
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:screen_move/util/url_loader.dart';

class LeeChunhyangScreen extends StatelessWidget {
  const LeeChunhyangScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 80.0,),

              Image.asset(
                'assets/images/leechunhyang.jpg',
                width: 200,
                height: 200,
              ),
              Text('이춘향'),
              SizedBox(height: 10.0,),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '유튜브 주소:',
                      style: TextStyle(color: Colors.black)
                    ),

                    TextSpan(
                      text: 'https://youtube.com/@leechunhyangeo?si=SkI4Rntf83dPhiyr',
                      style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()..onTap = () async {
                        await Util().launchYouTubeChannel('https://youtube.com/@leechunhyangeo?si=SkI4Rntf83dPhiyr');
                      }
                    )

                  ]
                ),
              )

            ],
          )
        ),
    );
  }


}