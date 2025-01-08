import 'package:ducth_minigame/ui/components/card/another_player_card_component.dart';
import 'package:ducth_minigame/ui/components/player_hand/another_player_hand_component.dart';
import 'package:ducth_minigame/ui/components/player_hand/player_hand_component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dutch"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AnotherPlayerHandComponent(),
          PlayerHandComponent()
        ],
      ),
    );
  }
}
