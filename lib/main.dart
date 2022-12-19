import 'package:flutter/material.dart';
import 'package:flutter_streams/ui/counter_screen.dart';
import 'package:flutter_streams/ui/counter_screen_view.dart';
import 'ui/stream_project/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterScreenView(),
    );
  }
}
