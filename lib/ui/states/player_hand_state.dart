
import 'package:flutter/material.dart';
import '../../app/models/player_card_model.dart';

class PlayerHandState extends ChangeNotifier {
  late List<PlayerCardModel> _playerCards;

  List<PlayerCardModel> get playerCards => _playerCards;

  bool _isClickable = true;

  bool get isClickable => _isClickable;

  void turnClickable(){
    _isClickable = true;
        notifyListeners();
  }

  void turnNotClickable(){
    _isClickable = false;
        notifyListeners();
  }

  void setInitialCards(List<PlayerCardModel> initialCards) {
    _playerCards = initialCards;
  }

  void updateCard(int index, PlayerCardModel newCard) {
    _playerCards[index] = newCard;
    notifyListeners();
  }

  void removeCard(PlayerCardModel card) {
    _playerCards.remove(card);
    notifyListeners();
  }
}
