import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

var endAl = Alignment.topLeft;
var startAl = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.firstColor, this.secondColor, {super.key});

  final Color firstColor, secondColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [firstColor, secondColor], begin: startAl, end: endAl),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}
