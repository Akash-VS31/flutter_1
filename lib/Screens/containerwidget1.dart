import 'package:flutter/material.dart';
class Containerwidget1 extends StatelessWidget {
  const Containerwidget1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Container(
          color: Colors.amber,
              child: const FlutterLogo(
            size: 200,
        ),
         // alignment: const Alignment
          margin: EdgeInsets.only(left: 70,bottom: 50),
      ),
    ),
    );
  }
}
