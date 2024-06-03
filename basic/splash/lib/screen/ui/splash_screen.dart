
import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splash/screen/ui/home_screen.dart';

class SplashScreen extends StatefulWidget {

  @override
  _SplashScreenState createState() => _SplashScreenState();
  
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

    @override
    void initState() {
      super.initState();

      // // 애니메이션 컨트롤러 설정
      // _controller = AnimationController(
      //   duration: const Duration(seconds: 1),
      //   vsync: this,
      // )
      //   ..repeat(reverse: true);
      //
      // _animation = CurvedAnimation(
      //   parent: _controller!,
      //   curve: Curves.easeIn,
      // );

      // 타이머 설정
      Timer(Duration(seconds: 1), () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => HomeScreen()));
      });
    }

    @override
    void dispose() {
      _controller?.dispose();
      super.dispose();
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Image.asset('assets/images/tamtam.jpg'),
          // child: FadeTransition(
          //   opacity: _animation!,
          //   child: Image.asset('assets/images/tamtam.jpg'), // 로고 이미지 경로
          // ),
        ),
      );
    }
}
