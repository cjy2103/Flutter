
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

ListTile _character(String title, String subtitle, String img) => ListTile(
    title: Text(title),
    subtitle: Text(subtitle),
    leading: Image.asset(img)
);


