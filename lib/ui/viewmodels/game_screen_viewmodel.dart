import '../../app/models/player_card_model.dart';
import '../../app/repositories/card_repository.dart';
import '../states/player_hand_state.dart';

class GameScreenViewmodel {
  GameScreenViewmodel(this.cardRepository, this.playerHandState);
  final CardRepository cardRepository;
  final PlayerHandState playerHandState;

  void setInitialCards() {
    List<PlayerCardModel> initialCards = cardRepository.generateStartGameCards();
    playerHandState.setInitialCards(initialCards);
  }

  void updateCard(int index) {
    PlayerCardModel newCard = cardRepository.generateCard();
    playerHandState.updateCard(index, newCard);  
  }

  void removeCard(int index) {
    playerHandState.removeCard(index);
  }
}
