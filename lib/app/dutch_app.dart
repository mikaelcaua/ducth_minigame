import 'package:ducth_minigame/ui/states/mid_card_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../ui/screens/game_screen.dart';
import '../ui/states/player_hand_state.dart';
import '../ui/viewmodels/game_screen_viewmodel.dart';
import 'repositories/card_repository.dart';

class DutchApp extends StatelessWidget {
  const DutchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => PlayerHandState(),
        ),
        ChangeNotifierProvider(create: (context) => MidCardState(),)
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: Builder(
          builder: (context) {
            return GameScreen(
              gameScreenViewmodel: GameScreenViewmodel(CardRepository(), Provider.of<PlayerHandState>(context), Provider.of<MidCardState>(context)),
            );
          },
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
