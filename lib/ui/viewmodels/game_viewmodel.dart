import 'package:flutter/material.dart';
import '../../app/models/player_card_model.dart';
import '../../app/repositories/card_repository.dart';

class GameViewmodel extends ChangeNotifier {
  GameViewmodel(this.cardRepository);
  final CardRepository cardRepository;

  late PlayerCardModel midcard = (cardRepository.generateCard());
  late List<PlayerCardModel> playerCards =
      cardRepository.generateStartGameCards();
  bool _isClickable = true;

  bool get isClickable => _isClickable;

  void turnClickable() {
    _isClickable = true;
    notifyListeners();
  }

  void turnNotClickable() {
    _isClickable = false;
    notifyListeners();
  }

  PlayerCardModel updateCard() {
    return cardRepository.generateCard();
  }

  void removeCard(PlayerCardModel card) {
    playerCards.remove(card);
    notifyListeners();
  }

  void setMidCard(PlayerCardModel card) {
    midcard = card;
    notifyListeners();
  }

  void discardCard(PlayerCardModel playerCard, void Function() hideOrShowCard) {
    if (isClickable) {
      if (playerCard.number == midcard.number) {
        removeCard(playerCard);
        turnClickable();
        debugPrint("${playerCard.number} == ${midcard.number}");
      } else {
        hideOrShowCard();
        turnNotClickable();
        setMidCard(playerCard);
        debugPrint("${playerCard.number} == ${midcard.number}");
      }
    }
  }

}
