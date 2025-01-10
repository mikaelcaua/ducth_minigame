import 'package:flutter/material.dart';
import '../../../app/models/player_card_model.dart';

class PlayerCardComponent extends StatefulWidget {
  PlayerCardComponent(this.playerCardModel);
  final PlayerCardModel playerCardModel;

  @override
  State<PlayerCardComponent> createState() => _PlayerCardComponentState();
}

class _PlayerCardComponentState extends State<PlayerCardComponent> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: isClicked ? Colors.white : Colors.red,
      width: 75,
      height: 150,
      child: Center(
        child: Text("${widget.playerCardModel.number}"),
      ),
    );
  }
}
