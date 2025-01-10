import 'package:flutter/material.dart';
import '../../app/models/player_card_model.dart';

class PlayerHandState extends ChangeNotifier {
  late List<PlayerCardModel> _playerCards;

  List<PlayerCardModel> get playerCards => _playerCards;

  void setInitialCards(List<PlayerCardModel> initialCards) {
    _playerCards = initialCards;
    notifyListeners();
  }

  void updateCard(int index, PlayerCardModel newCard) {
    _playerCards[index] = newCard;
    notifyListeners();
  }

  void removeCard(int index) {
    _playerCards.removeAt(index);
    notifyListeners();
  }
}
