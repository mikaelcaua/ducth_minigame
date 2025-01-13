import '../models/player_card_model.dart';
import '../utills/card_suit.dart';

class CardRepository {
  PlayerCardModel generateCard() {
    return PlayerCardModel(number: 1,cardSuit: CardSuit.clubs);
  }

  List<PlayerCardModel> generateStartGameCards() {
    return [PlayerCardModel(number: 1,cardSuit: CardSuit.clubs),
    PlayerCardModel(number: 1,cardSuit: CardSuit.clubs),
    PlayerCardModel(number: 1,cardSuit: CardSuit.clubs),
    PlayerCardModel(number: 2,cardSuit: CardSuit.clubs),
    PlayerCardModel(number: 3,cardSuit: CardSuit.clubs),
    PlayerCardModel(number: 4,cardSuit: CardSuit.clubs)];
  }


}
