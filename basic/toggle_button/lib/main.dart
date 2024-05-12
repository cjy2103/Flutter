import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<bool> _seletions = List.generate(3, (index) => false);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ToggleButtons(
            children: const [
              Icon(Icons.coffee),
              Icon(Icons.fastfood),
              Icon(Icons.cake),
            ],
            isSelected: _seletions,
            color: Colors.green,
            selectedColor: Colors.orange,
            fillColor: Colors.tealAccent,
            splashColor: Colors.purple,
            // borderRadius: BorderRadius.circular(30),
            // borderWidth: 5,
            // borderColor: Colors.pink,
            // selectedBorderColor: Colors.orange,

            // onPressed: null,
            // disabledColor: Colors.grey[300],
            // disabledBorderColor: Colors.blueGrey,
            onPressed: (int index) {
              setState(() {
                _seletions[index] = !_seletions[index];
              });
            },
          ),
        ),
      ),
    );
  }
}