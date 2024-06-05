import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splash/screen/ui/home_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {

    @override
    void initState() {
      super.initState();

      // 타이머 설정
      Timer(Duration(seconds: 1), () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
      });
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Image.asset('assets/images/tamtam.jpg'),
        ),
      );
    }
}
