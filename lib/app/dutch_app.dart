
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../ui/screens/game_screen.dart';
import '../ui/viewmodels/game_viewmodel.dart';
import 'repositories/card_repository.dart';

class DutchApp extends StatelessWidget {
  const DutchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => GameViewmodel(CardRepository()),)
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: Builder(
          builder: (context) {
            return GameScreen(
              gameViewmodel: GameViewmodel(CardRepository(),),
            );
          },
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
