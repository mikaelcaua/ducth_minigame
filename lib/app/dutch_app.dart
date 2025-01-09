import 'package:ducth_minigame/ui/screens/game_screen.dart';
import 'package:flutter/material.dart';

class DutchApp extends StatelessWidget {
  const DutchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: GameScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}