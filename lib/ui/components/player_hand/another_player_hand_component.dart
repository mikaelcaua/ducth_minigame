import 'package:ducth_minigame/ui/components/card/another_player_card_component.dart';
import 'package:flutter/material.dart';

class AnotherPlayerHandComponent extends StatelessWidget {
  const AnotherPlayerHandComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          AnotherPlayerCardComponent(),
          AnotherPlayerCardComponent(),
          AnotherPlayerCardComponent(),
          AnotherPlayerCardComponent(),
          AnotherPlayerCardComponent()
        ]),
      ],
    );
  }
}
