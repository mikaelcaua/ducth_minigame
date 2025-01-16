import 'package:flutter/material.dart';
import '../../../app/models/player_card_model.dart';
import '../../states/player_hand_state.dart';

class PlayerCardComponent extends StatefulWidget {
  const PlayerCardComponent(
      {super.key, required this.playerCard, required this.playerHandState});

  final PlayerCardModel playerCard;
  final PlayerHandState playerHandState;

  @override
  State<PlayerCardComponent> createState() => _PlayerCardComponentState();
}

class _PlayerCardComponentState extends State<PlayerCardComponent> {
  bool isClicked = false;

  void _toggleCardColor() {
    if (widget.playerHandState.isClickable) {
      setState(() {
        isClicked = !isClicked;
        widget.playerHandState.turnNotClickable();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleCardColor,
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
