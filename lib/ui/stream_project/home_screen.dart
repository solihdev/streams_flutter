import 'package:flutter/material.dart';
import 'package:flutter_streams/ui/stream_project/number_numbers_screen.dart';
import 'package:flutter_streams/ui/stream_project/square_screen.dart';
import 'package:flutter_streams/utils/color.dart';

import 'counting_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          "Home Screen",
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: TextFormField(
                // obscureText: true,
                textInputAction: TextInputAction.done,
                style: const TextStyle(color: Colors.black),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter your Password";
                  };
                  return null;
                },
                decoration: const InputDecoration(
                  hintStyle:
                   TextStyle(color: MyColors.C_868686),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      width: 1,
                      color: MyColors.C_868686,
                    ),
                  ),
                ),
              ),
            ),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SquareScreen()));
            }, child: const Text("Kiritilgan sonning kvadrati")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NumberNumbersScreen()));
            }, child: const Text("Raqamlari soni")),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const CountingScreen()));
            }, child: const Text("Kiritilgan songacha sanaydi!")),
          ],
        ),
      ),
    );
  }
}
