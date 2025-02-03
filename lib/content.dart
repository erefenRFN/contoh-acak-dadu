import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'image_dice.dart';
import 'dart:math';

final randomizer = Random();
class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}
class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;
  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+ 1;
    });
  }
  @override
  build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/dice-$currentDiceRoll.png",
          width: 200,
        ),
        CupertinoButton(
          onPressed: rollDice,
          child: const Text("Roll Dice!")
        )
      ]
    );
  }
}

class contents extends StatelessWidget {
  contents(this.color1, this.color2, {super.key});
  final Color color1;
  final Color color2;
  @override
  build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[color1, color2],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          tileMode: TileMode.mirror,
        ),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}
