import 'package:flutter/material.dart';
import '../../app/models/player_card_model.dart';
import '../../app/repositories/card_repository.dart';

class GameViewmodel extends ChangeNotifier {
  GameViewmodel(this.cardRepository);
  final CardRepository cardRepository;

  late PlayerCardModel midcard;
  late List<PlayerCardModel> playerCards;

  bool _isClickable = true;

  bool get isClickable => _isClickable;

  void turnClickable() {
    _isClickable = true;
  }

  void turnNotClickable() {
    _isClickable = false;
  }

  void updateCard(int index, PlayerCardModel newCard) {
    playerCards[index] = newCard;
    notifyListeners();
  }

  void removeCard(PlayerCardModel card) {
    playerCards.remove(card);
    notifyListeners();
  }


  void setMidCard(PlayerCardModel card) {
    midcard = card;
    notifyListeners();
  }

  void initGame() {
    playerCards = cardRepository.generateStartGameCards();
    midcard = (cardRepository.generateCard());
  }
}
