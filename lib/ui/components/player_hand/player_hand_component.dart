
import 'package:ducth_minigame/app/models/player_card_model.dart';
import 'package:ducth_minigame/ui/states/mid_card_state.dart';
import 'package:flutter/material.dart';
import '../../states/player_hand_state.dart';
import '../card/player_card_component.dart';

class PlayerHandComponent extends StatelessWidget {
  const PlayerHandComponent({
    Key? key,
    required this.playerHandState, required this.removeCard, required this.midCardState,
  }) : super(key: key);
  final PlayerHandState playerHandState;
  final MidCardState midCardState;
  final void Function(PlayerCardModel) removeCard;
  
  @override
  Widget build(BuildContext context) {
        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 10.0,
          runSpacing: 8.0,
          children: playerHandState.playerCards
              .map((e) => PlayerCardComponent(playerCard: e, playerHandState: playerHandState, removeCard: removeCard, midCardState: midCardState,))
              .toList(),
        );
      }
}
