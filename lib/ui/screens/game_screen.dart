import 'package:ducth_minigame/app/viewmodel/game_screen_viewmodel.dart';
import 'package:ducth_minigame/ui/components/card/mid_card_component.dart';
import 'package:ducth_minigame/ui/components/card/player_card_component.dart';
import 'package:ducth_minigame/ui/components/player_hand/another_player_hand_component.dart';
import 'package:ducth_minigame/ui/components/player_hand/player_hand_component.dart';
import 'package:ducth_minigame/ui/theme/game_colors.dart';
import 'package:flutter/material.dart';
import '../components/card/another_player_card_component.dart';

class GameScreen extends StatelessWidget {
  GameScreen({super.key, required this.gameScreenViewmodel});
  final GameScreenViewmodel gameScreenViewmodel;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gameTableColor,
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
                AnotherPlayerCardComponent(),
              ],
            ),
            MidCardComponent(),
            PlayerHandComponent(
              playerCards: gameScreenViewmodel.playerCards
                  .map((e) => PlayerCardComponent(playerCardModel: e))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
