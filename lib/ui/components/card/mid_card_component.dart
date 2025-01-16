
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../viewmodels/game_viewmodel.dart';

class MidCardComponent extends StatelessWidget {
  const MidCardComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 40,
      height: 80,
      child: Center(
        child: Text(
          Provider.of<GameViewmodel>(context).midcard.number.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}