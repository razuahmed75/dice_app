// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDice = 1;
  int rightDice = 2;
  void changeTheDice() {
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dice App",
      home: Scaffold(
        backgroundColor: Color(0xFFB1F2B36),
        appBar: AppBar(
          title: Text("Dice App"),
          centerTitle: true,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: InkWell(
                    onTap: changeTheDice,
                    child: SizedBox(
                      child: Image.asset("assets/images/dice$leftDice.png"),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: InkWell(
                        onTap: () {
                          changeTheDice();
                        },
                        child: Image.asset("assets/images/dice$rightDice.png")),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
