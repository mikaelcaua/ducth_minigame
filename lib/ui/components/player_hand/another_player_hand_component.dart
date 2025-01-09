import 'package:ducth_minigame/ui/components/card/another_player_card_component.dart';
import 'package:flutter/material.dart';

class AnotherPlayerHandComponent extends StatelessWidget {
  const AnotherPlayerHandComponent({super.key, required this.anotherPlayerCards});
  final List<AnotherPlayerCardComponent> anotherPlayerCards;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      children: anotherPlayerCards,
    );
  }
}
