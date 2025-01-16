
import 'package:flutter/material.dart';
import '../card/another_player_card_component.dart';

class AnotherPlayerHandComponent extends StatelessWidget {
  const AnotherPlayerHandComponent(
      {super.key, required this.anotherPlayerCards});
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
