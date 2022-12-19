import 'package:flutter/material.dart';

class CountingScreen extends StatefulWidget {
  const CountingScreen({Key? key}) : super(key: key);

  @override
  State<CountingScreen> createState() => _CountingScreenState();
}

class _CountingScreenState extends State<CountingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Counting Screen",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
    );
  }
}
