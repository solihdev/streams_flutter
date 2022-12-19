import 'package:flutter/material.dart';

class SquareScreen extends StatelessWidget {
  const SquareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Square Screen",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
