
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/Character.dart';
import '../vm/character_viewmodel.dart';

const imagePath = 'assets/images/';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CharacterViewModel>(context, listen: false);


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
                _insertButton(viewModel),
                SizedBox(width: 20.0,),
                _deleteButton(viewModel),
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
}


  Widget _insertButton(CharacterViewModel viewModel) =>
      InkWell(
          onTap: () {
            viewModel.addItem(Character(
                name: '탬탬버린',
                describe: '힐링캠프',
                imagePath: imagePath + 'tamtam.jpg'));
            viewModel.addItem(Character(
                name: '이춘향',
                describe: '힐링캠프',
                imagePath: imagePath + 'leechunhyang.jpg'));
            viewModel.addItem(Character(
                name: '마뫄',
                describe: '힐링캠프',
                imagePath: imagePath + 'mwama.jpg'));
            viewModel.addItem(Character(
                name: '삐부',
                describe: '힐링캠프',
                imagePath: imagePath + 'bbibu.webp'));
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

  Widget _deleteButton(CharacterViewModel viewModel) =>
      InkWell(
          onTap: () {
            if (viewModel.list.isNotEmpty) {
              viewModel.deleteItem();
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


Widget _buildList() =>
    Expanded(
      child: Consumer<CharacterViewModel>(
        builder: (context, viewModel, child) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: viewModel.list.length,
            itemBuilder: (context, index) {
              final character = viewModel.list[index];
              return _character(character, index);
            },
          );
        },
      ),
    );


Widget _character(Character character, int index) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: InkWell(
      onTap: () {
        // 아이템 클릭 이벤트 처리
        print('Character ${character.name} clicked at index $index');
        // 원하는 로직 추가
      },
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xFFBABABA),
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Row(
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFBABABA),
                    width: 1.0,
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
    ),
  );
}

