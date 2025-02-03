import 'package:flutter/material.dart';
import 'content.dart';
void main() {
  runApp(documents());
}
class documents extends StatelessWidget {
  const documents({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: contents(
          Color.fromARGB(255, 127, 17, 224),
          Color.fromARGB(255, 255, 255, 181),
        ),
      ),
    );
  }
}