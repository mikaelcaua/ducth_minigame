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

  PlayerCardModel generateCard() {
    return cardRepository.generateCard();
  }

  void removeCard(PlayerCardModel card) {
    playerCards.remove(card);
    notifyListeners();
  }

  void addCard(PlayerCardModel card) {
    playerCards.add(card);
    notifyListeners();
  }

  void setMidCard(PlayerCardModel card) {
    midcard = card;
    notifyListeners();
  }

  discardCard(PlayerCardModel playerCard, void Function() hideOrShowCard) async{
    if (isClickable) {
      if (playerCard.number == midcard.number) {
        removeCard(playerCard);
        turnClickable();
        debugPrint("${playerCard.number} == ${midcard.number}");
      } else {
        hideOrShowCard();
        // await Future.delayed(const Duration(seconds: 1)); //testando
        turnNotClickable();
        setMidCard(playerCard);
        removeCard(playerCard);
        addCard(generateCard());
        hideOrShowCard();
        debugPrint("${playerCard.number} == ${midcard.number}");
      }
    }
  }

}
