import 'package:flutter/material.dart';
import '../components/card/mid_card_component.dart';
import '../components/player_hand/another_player_hand_component.dart';
import '../components/player_hand/player_hand_component.dart';
import '../theme/game_colors.dart';
import '../viewmodels/game_viewmodel.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key, required this.gameViewmodel});
  final GameViewmodel gameViewmodel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gameTableColor,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 40, 40, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AnotherPlayerHandComponent(anotherPlayerCards: []),
            MidCardComponent(),
            PlayerHandComponent(),
          ],
        ),
      ),
    );
  }
}