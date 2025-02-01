import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int currentDiceRoll = 2;

  void rollDice() {
    var diceRoll = randomizer.nextInt(6) + 1;
    setState(() {
      currentDiceRoll = diceRoll;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: TextStyle(fontSize: 28)),
          onPressed: rollDice,
          child: Text('Roll the dice'),
        )
      ],
    );
  }
}
