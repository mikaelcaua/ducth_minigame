import '../../app/models/player_card_model.dart';
import '../../app/repositories/card_repository.dart';
import '../states/mid_card_state.dart';
import '../states/player_hand_state.dart';

class GameScreenViewmodel {
  GameScreenViewmodel(this.cardRepository, this.playerHandState, this.midCardState);
  final CardRepository cardRepository;
  final PlayerHandState playerHandState;
  final MidCardState midCardState;

  void initGame() {
    List<PlayerCardModel> initialCards = cardRepository.generateStartGameCards();
    playerHandState.setInitialCards(initialCards);
    midCardState.setInitCard(cardRepository.generateCard());
  }

  void updateCard(int index) {
    PlayerCardModel newCard = cardRepository.generateCard();
    playerHandState.updateCard(index, newCard);  
  }

  void removeCard(PlayerCardModel card) {
    playerHandState.removeCard(card);
  }
}
