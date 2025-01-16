import 'package:ducth_minigame/app/models/player_card_model.dart';
import 'package:flutter/material.dart';

class MidCardState extends ChangeNotifier{
  late PlayerCardModel midcard;

  void setMidCard(PlayerCardModel card){
    midcard = card;
    notifyListeners();
  }
}