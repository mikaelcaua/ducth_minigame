
import 'package:ducth_minigame/ui/states/mid_card_state.dart';
import 'package:flutter/material.dart';
import '../../../app/models/player_card_model.dart';
import '../../states/player_hand_state.dart';

class PlayerCardComponent extends StatefulWidget {
  const PlayerCardComponent(
      {super.key, required this.playerCard, required this.playerHandState, required this.removeCard, required this.midCardState});

  final PlayerCardModel playerCard;
  final PlayerHandState playerHandState;
  final MidCardState midCardState;
  final void Function(PlayerCardModel) removeCard;



  @override
  State<PlayerCardComponent> createState() => _PlayerCardComponentState();
}

class _PlayerCardComponentState extends State<PlayerCardComponent> {
  bool isClicked = false;

  void hideOrShowCard() {
    setState(() {
        isClicked = !isClicked;
      });
  }

  void discardCard(){
    PlayerHandState playerHandState = widget.playerHandState; 
    PlayerCardModel playerCard = widget.playerCard;
    MidCardState midCardState =  widget.midCardState;

    if(playerCard.number == midCardState.midcard.number) {
        widget.removeCard(playerCard);
        playerHandState.turnClickable();
        debugPrint("${playerCard.number} == ${midCardState.midcard.number}"); 
    }
    else{
      hideOrShowCard();
      playerHandState.turnNotClickable();
      debugPrint("${playerCard.number} == ${midCardState.midcard.number}"); 
    }
  }

  void _onClick() {
    PlayerHandState playerHandState = widget.playerHandState; 
    if (playerHandState.isClickable) {
      discardCard();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onClick,
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
