import 'package:flutter/material.dart';

class NumberNumbersScreen extends StatefulWidget {
  const NumberNumbersScreen({Key? key}) : super(key: key);

  @override
  State<NumberNumbersScreen> createState() => _NumberNumbersScreenState();
}

class _NumberNumbersScreenState extends State<NumberNumbersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Number numbers Screen",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
