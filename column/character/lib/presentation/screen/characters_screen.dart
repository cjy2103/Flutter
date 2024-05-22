
import 'package:flutter/material.dart';

const imagePath = 'assets/images/';

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

Widget _buildList() => Expanded(
    child: ListView(
      children: [
        _character('탬탬버린','힐링캠프',imagePath + 'tamtam.jpg'),
        _character('이춘향', '힐링캠프', imagePath + 'leechunhyang.jpg'),
        _character('마뫄','힐링캠프',imagePath + 'mwama.jpg'),
        _character('삐부', '힐링캠프', imagePath + 'bbibu.webp'),
        _character('탬탬버린','힐링캠프',imagePath + 'tamtam.jpg'),
        _character('이춘향', '힐링캠프', imagePath + 'leechunhyang.jpg'),
        _character('마뫄','힐링캠프',imagePath + 'mwama.jpg'),
        _character('삐부', '힐링캠프', imagePath + 'bbibu.webp'),
        _character('탬탬버린','힐링캠프',imagePath + 'tamtam.jpg'),
        _character('이춘향', '힐링캠프', imagePath + 'leechunhyang.jpg'),
        _character('마뫄','힐링캠프',imagePath + 'mwama.jpg'),
        _character('삐부', '힐링캠프', imagePath + 'bbibu.webp'),
      ],
    ),
);

Widget _character(String title, String subtitle, String img) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0), // 수평 방향으로 패딩 추가
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color(0xFFBABABA), // Row의 테두리 색상
          width: 1.0, // Row의 테두리 두께
        ),

      ),
      child: Padding(
        padding: const EdgeInsets.all(0.0), // 내부 패딩 추가
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFBABABA), // 이미지의 테두리 색상
                  width: 1.0, // 이미지의 테두리 두께
                ),

              ),
              child: ClipRRect(
                child: Image.asset(
                  img,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      subtitle,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
