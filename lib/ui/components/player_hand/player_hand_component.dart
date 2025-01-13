
import 'package:flutter/material.dart';
import '../../states/player_hand_state.dart';
import '../card/player_card_component.dart';

class PlayerHandComponent extends StatelessWidget {
  const PlayerHandComponent({
    Key? key,
    required this.playerHandState,
  }) : super(key: key);
  final PlayerHandState playerHandState;
  
  @override
  Widget build(BuildContext context) {
        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 10.0,
          runSpacing: 8.0,
          children: playerHandState.playerCards
              .map((e) => PlayerCardComponent(playerCard: e))
              .toList(),
        );
      }
}
