import 'package:ducth_minigame/ui/components/card/player_card_component.dart';
import 'package:ducth_minigame/ui/components/player_hand/another_player_hand_component.dart';
import 'package:ducth_minigame/ui/components/player_hand/player_hand_component.dart';
import 'package:flutter/material.dart';
import '../components/card/another_player_card_component.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 114, 59),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 40, 40, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnotherPlayerHandComponent(
              anotherPlayerCards: [
                AnotherPlayerCardComponent(),
                AnotherPlayerCardComponent(),
                AnotherPlayerCardComponent(),
                AnotherPlayerCardComponent(),
                AnotherPlayerCardComponent()
              ],
            ),
            PlayerHandComponent(
              playerCards: [
                PlayerCardComponent(),
                PlayerCardComponent(),
                PlayerCardComponent(),
                PlayerCardComponent(),
                PlayerCardComponent()
              ],
            )
          ],
        ),
      ),
    );
  }
}
