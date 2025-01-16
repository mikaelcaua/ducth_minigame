import 'package:flutter/material.dart';
import '../../states/mid_card_state.dart';

class MidCardComponent extends StatelessWidget {
  const MidCardComponent({super.key, required this.midCardState});
  final MidCardState midCardState;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: 40,
      height: 80,
      child: Center(
        child: Text(
          midCardState.midcard.number.toString(),
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}