


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/game_viewmodel.dart';
import '../card/player_card_component.dart';

class PlayerHandComponent extends StatelessWidget {
  const PlayerHandComponent({
    Key? key,}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
        return Wrap(
          alignment: WrapAlignment.center,
          spacing: 10.0,
          runSpacing: 8.0,
          children: Provider.of<GameViewmodel>(context).playerCards
              .map((e) => PlayerCardComponent(playerCard: e,),)
              .toList(),
        );
      }
}
