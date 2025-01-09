import 'package:ducth_minigame/app/model/player_card_model.dart';
import 'package:flutter/material.dart';

class GameScreenViewmodel extends ChangeNotifier {
  final List<PlayerCardModel> playerCards = [
    PlayerCardModel(),
    PlayerCardModel(),
    PlayerCardModel(),
    PlayerCardModel(),
    PlayerCardModel()
  ];

  void updateCard(int index) {
    playerCards[index] = PlayerCardModel(); //generate new card
    notifyListeners();
  }
}
