import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../ui/screens/game_screen.dart';
import '../ui/state/player_hand_state.dart';
import '../ui/viewmodels/game_screen_viewmodel.dart';
import 'repositories/card_repository.dart';

class DutchApp extends StatelessWidget {
  const DutchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PlayerHandState()),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: GameScreen(gameScreenViewmodel: GameScreenViewmodel(CardRepository(),PlayerHandState()),),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}