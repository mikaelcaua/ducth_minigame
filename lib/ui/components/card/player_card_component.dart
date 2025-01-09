import 'package:flutter/material.dart';
import '../../../app/model/player_card_model.dart';

class PlayerCardComponent extends StatefulWidget {
  PlayerCardComponent({
    Key? key,
    required this.playerCardModel,
  }) : super(key: key);
  final PlayerCardModel playerCardModel;
  @override
  State<PlayerCardComponent> createState() => _PlayerCardComponentState();
}

class _PlayerCardComponentState extends State<PlayerCardComponent> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Container(
        color: isClicked ? Colors.white : Colors.red,
        width: 75,
        height: 150,
      ),
    );
  }
}
