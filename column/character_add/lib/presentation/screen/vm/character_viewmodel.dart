
import 'package:flutter/cupertino.dart';

import '../../data/Character.dart';

class CharacterViewModel extends ChangeNotifier {
  List<Character> _list = [
    Character(name: '탬탬버린', describe: '힐링캠프', imagePath: 'assets/tamtam.jpg'),
    Character(name: '이춘향', describe: '힐링캠프', imagePath: 'assets/leechunhyang.jpg'),
    Character(name:'마뫄', describe: '힐링캠프', imagePath: 'assets/mwama.jpg'),
    Character(name: '삐부', describe: '힐링캠프', imagePath: 'assets/bbibu.webp'),
  ];

  List<Character> get list => _list;

  void addItem(Character newItem) {
    _list.add(newItem);
    notifyListeners();
  }

  void deleteItem(){
    _list.removeLast();
    notifyListeners();
  }

}