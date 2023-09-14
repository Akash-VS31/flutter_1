import 'package:flutter/material.dart';
class Imagesample1 extends StatefulWidget {
  const Imagesample1({super.key});

  @override
  State<Imagesample1> createState() => _Imagesample1State();
}

class _Imagesample1State extends State<Imagesample1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Argentina world champions",
          style: TextStyle(fontSize: 30,fontFamily: 'BebasNeue'),
          ),
          Center(
            child: Container(
              child:(Image(image: AssetImage('assets/img.png'))),
            ),
          )
          //asset image
        ],
      ),
    );
  }
}
