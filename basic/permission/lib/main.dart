import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  Future<void> requestStoragePermission() async {
    if (Platform.isAndroid && await _isAndroid13OrAbove()) {
      // Android 13 이상
      PermissionStatus imagesStatus = await Permission.photos.request();
      PermissionStatus videoStatus = await Permission.videos.request();
      PermissionStatus audioStatus = await Permission.audio.request();

      if (imagesStatus.isGranted && videoStatus.isGranted && audioStatus.isGranted) {
        print("저장소 권한이 허용되었습니다.");
      } else {
        print("저장소 권한이 거부되었습니다.");
      }
    } else {
      // Android 12 이하 및 다른 플랫폼
      PermissionStatus status = await Permission.storage.request();
      if (status.isGranted) {
        print("저장소 권한이 허용되었습니다.");
      } else {
        print("저장소 권한이 거부되었습니다.");
      }
    }
  }

  Future<bool> _isAndroid13OrAbove() async {
    final androidInfo = await DeviceInfoPlugin().androidInfo;
    return androidInfo.version.sdkInt >= 33;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              const SizedBox(height: 80.0),

              ElevatedButton(onPressed: () async {
                  await requestStoragePermission();
              }, child: const Text("저장소 권한 요청",
                style: TextStyle(color: Colors.black),)
                ,
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    foregroundColor: Colors.red
                ),

              ),
            ],
            ),
          )
      ),
    );
  }
}
