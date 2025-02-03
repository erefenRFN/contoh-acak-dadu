import 'package:flutter/material.dart';
import 'dart:math';

class imageDice extends StatelessWidget {
  const imageDice({super.key});
  @override
  Widget build(BuildContext context) {
    Random random = new Random();
    int getn = random.nextInt(6) + 1;
    return Image.asset("assets/dice-$getn.png", width: 200);
  }
}
