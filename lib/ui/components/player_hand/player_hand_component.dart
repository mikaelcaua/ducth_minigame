import 'package:ducth_minigame/ui/components/card/player_card_component.dart';
import 'package:flutter/material.dart';

class PlayerHandComponent extends StatelessWidget {
  const PlayerHandComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [PlayerCardComponent(), PlayerCardComponent()]
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [PlayerCardComponent(), PlayerCardComponent(), PlayerCardComponent()]
        )
      ],
    );
  }
}