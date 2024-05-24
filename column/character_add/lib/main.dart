import 'package:character_add/presentation/screen/ui/characters_screen.dart';
import 'package:character_add/presentation/screen/vm/character_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CharacterViewModel()),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: Center(
            child: CharacterScreen(),
          ),
        ),
      ),
    );
  }
}
