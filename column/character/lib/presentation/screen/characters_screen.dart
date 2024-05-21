
import 'package:flutter/material.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: Center(
          child: Column(
              children: [
                SizedBox(height: 60.0),

                Text("List 예제"),

                SizedBox(height: 40.0),

                _buildList()
              ],
          ),
        ),
      );
  }

}

Widget _buildList() => ListView(
  children: [
    _character('탬탬버린','힐링캠프','assets/images/tamtam.jpg')


  ],
  shrinkWrap: true, // 콘텐츠 높이에 맞게 감싸짐
);

Widget _character(String title, String subtitle, String img) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Image.asset(
          img,
          width: 100,
          height: 100,
          fit: BoxFit.cover,
        ),

        SizedBox(width: 10), // 이미지와 텍스트 사이의 간격을 위한 SizedBox

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 5),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
