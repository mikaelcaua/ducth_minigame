
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../app/models/player_card_model.dart';
import '../../viewmodels/game_viewmodel.dart';

class PlayerCardComponent extends StatefulWidget {
  const PlayerCardComponent({super.key, required this.playerCard});
  final PlayerCardModel playerCard;

  @override
  State<PlayerCardComponent> createState() => _PlayerCardComponentState();
}

class _PlayerCardComponentState extends State<PlayerCardComponent> {
  bool isClicked = false;

  void hideOrShowCard() {
    setState(() {
      isClicked = !isClicked;
    });
  }

  void _onClick() {
    GameViewmodel gameViewModel = Provider.of<GameViewmodel>(context, listen: false);
    gameViewModel.discardCard(widget.playerCard, hideOrShowCard); 
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onClick,
      child: Container(
        color: isClicked ? Colors.green : Colors.red,
        width: 75,
        height: 150,
        child: Center(
          child: Text("${isClicked ? widget.playerCard.number : ""}"),
        ),
      ),
    );
  }
}
