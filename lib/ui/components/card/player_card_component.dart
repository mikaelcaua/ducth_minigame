import 'package:flutter/material.dart';
import '../../../app/models/player_card_model.dart';

class PlayerCardComponent extends StatefulWidget {
  const PlayerCardComponent({super.key, required this.playerCard});
  
  final PlayerCardModel playerCard;

  @override
  State<PlayerCardComponent> createState() => _PlayerCardComponentState();
}

class _PlayerCardComponentState extends State<PlayerCardComponent> {
  bool isClicked = false;

  void _toggleCardColor() {
    setState(() {
      isClicked = !isClicked;
    });
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
