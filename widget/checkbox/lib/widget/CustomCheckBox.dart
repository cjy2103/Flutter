import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCheckBox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CustomCheckBox({required this.value, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(!value);
      },
      // 바깥쪽 원 모양 그리는 부분
      child: Container(
        width: 30.0, // 크기 조절하세요
        height: 30.0, // 크기 조절하세요
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 2.0),
        ),
        // 체크 아이콘 넣어주는곳
        child: value
            ? Icon(
          Icons.check,
          size: 20.0, // 체크 아이콘 크기 조절하세요
          color: Colors.black,
        )
            : null,
      ),
    );
  }
}
