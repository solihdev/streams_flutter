import 'package:flutter/material.dart';
import '../data/stream_generator.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}
class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Counter Screen",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: StreamBuilder<int>(
        stream: StreamGenerator.getMyNumbers(),
        builder: (context, AsyncSnapshot<int> snapshot){
          if(snapshot.hasData){
            return Center(child: Text(snapshot.data!.toString()),);
          }
          return const Center(child: CircularProgressIndicator(),);
        },
      ),
    );
  }
}
