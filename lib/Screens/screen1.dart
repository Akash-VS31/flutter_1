import 'package:flutter/material.dart';
class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar:AppBar(
      title:const Text(
          "HERO ISL",
        style: TextStyle(
            fontSize: 40,
          fontWeight: FontWeight.bold,
          color:Colors.blueAccent,
        ),
      ) ,
      centerTitle: true,
      backgroundColor:Colors.yellow ,
    ),
      body:const Text(
    "keralablasters",
    ),

    );
  }
}
