import 'package:character_add/presentation/data/Character.dart';
import 'package:character_add/presentation/screen/vm/character_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const imagePath = 'assets/images/';

List<Character> _list = [
  Character(name: '탬탬버린', describe: '힐링캠프', imagePath: imagePath + 'tamtam.jpg'),
  Character(name: '이춘향', describe: '힐링캠프', imagePath: imagePath + 'leechunhyang.jpg'),
  Character(name:'마뫄', describe: '힐링캠프', imagePath: imagePath + 'mwama.jpg'),
  Character(name: '삐부', describe: '힐링캠프', imagePath: imagePath + 'bbibu.webp'),
];


class CharacterScreen extends StatefulWidget {
  const CharacterScreen({super.key});

  @override
  _ListAppState createState() => _ListAppState();
}

class _ListAppState extends State<CharacterScreen>{


  void _addItem(String name, String describe, String imagePath){
    setState(() {
      _list.add(
        Character(name: name, describe: describe, imagePath: imagePath)
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 60.0),

            Text("List 예제"),

            SizedBox(height: 40.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                _insertButton(),
                SizedBox(width: 20.0,),
                _deleteButton(),
                SizedBox(width: 20.0,),
              ],
            ),

            SizedBox(height: 20.0),
            _buildList()
          ],
        ),
      ),
    );
  }


  Widget _insertButton() => InkWell(
      onTap: () {
        CharacterViewModel viewModel = Provider.of<CharacterViewModel>(context, listen: false);

        viewModel.addItem(Character(name: '탬탬버린', describe: '힐링캠프', imagePath: imagePath+'tamtam.jpg'));
        viewModel.addItem(Character(name: '이춘향', describe: '힐링캠프', imagePath: imagePath+'leechunhyang.jpg'));
        viewModel.addItem(Character(name: '마뫄', describe: '힐링캠프', imagePath: imagePath+'mwama.jpg'));
        viewModel.addItem(Character(name: '삐부', describe: '힐링캠프', imagePath: imagePath+'bbibu.webp'));
        // viewModel._addItem('이춘향', '힐링캠프', imagePath+'leechunhyang.jpg');
        // viewModel._addItem('마뫄', '힐링캠프', imagePath+'mwama.jpg');
        // viewModel._addItem('삐부', '힐링캠프', imagePath+'bbibu.webp');
      },
      child: CircleAvatar(
        radius: 30.0,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      )
  );

  Widget _deleteButton() => InkWell(
    onTap: () {
      if(_list.length>0){
        setState(() {
          _list.removeLast();
        });
      }
    },
      child: CircleAvatar(
        radius: 30.0,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.remove,
          color: Colors.white,
        ),
      )

  );

}


Widget _buildList() => Expanded(
  child: ListView.builder(
    padding: EdgeInsets.zero,
    itemCount: _list.length,
    itemBuilder: (context, index) {
      final character = _list[index];
      return _character(character);
    },
  ),
);

Widget _character(Character character) {
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
                  character.imagePath,
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
                      character.name,
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
                      character.describe,
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
