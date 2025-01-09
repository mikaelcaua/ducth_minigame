import 'package:ducth_minigame/ui/components/card/player_card_component.dart';
import 'package:flutter/material.dart';

class PlayerHandComponent extends StatefulWidget {
  const PlayerHandComponent({super.key, required this.playerCards});
  final List<PlayerCardComponent> playerCards;

  @override
  State<PlayerHandComponent> createState() => _PlayerHandComponentState();
}

class _PlayerHandComponentState extends State<PlayerHandComponent> {
  bool isYourTime = true;
  
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10.0,
      runSpacing: 8.0,
      children: widget.playerCards,
    );
  }
}
