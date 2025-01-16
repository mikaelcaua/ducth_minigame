import 'package:flutter/material.dart';
import '../components/card/mid_card_component.dart';
import '../components/player_hand/another_player_hand_component.dart';
import '../components/player_hand/player_hand_component.dart';
import '../theme/game_colors.dart';
import '../viewmodels/game_screen_viewmodel.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key, required this.gameScreenViewmodel});
  final GameScreenViewmodel gameScreenViewmodel;

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  @override
  void initState() {
    super.initState();
    widget.gameScreenViewmodel.initGame();
  }

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
            MidCardComponent(midCardState: widget.gameScreenViewmodel.midCardState,),
            PlayerHandComponent(playerHandState: widget.gameScreenViewmodel.playerHandState,midCardState: widget.gameScreenViewmodel.midCardState,removeCard: widget.gameScreenViewmodel.removeCard,),
          ],
        ),
      ),
    );
  }
}