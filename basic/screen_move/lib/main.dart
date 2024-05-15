import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


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
                      recognizer: TapGestureRecognizer()..onTap = _launchYouTubeChannel
                    ),
                  ],
                ),
              ),
                SizedBox(height: 30.0),

              OutlinedButton( onPressed: () {
                // 나중에 화면 이동예제 쓸것.
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

  void _launchYouTubeChannel() async {
    const url = 'https://www.youtube.com/@chamcham2';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      // Handle the case where the URL can't be launched
      print('Could not launch YouTube channel URL');
    }
  }
}
