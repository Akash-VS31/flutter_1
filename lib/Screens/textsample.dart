import 'package:flutter/material.dart';
class Textsample extends StatefulWidget {
  const Textsample({super.key});

  @override
  State<Textsample> createState() => _TextsampleState();
}

class _TextsampleState extends State<Textsample> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Container(
              width: width,
              child: Text(

             "hello robot",
                textAlign: TextAlign.center,
                textScaleFactor: 4.0,
                style: TextStyle(
                  fontFamily:'Rubiklso',

                  color: Colors.blue,
                  fontWeight: FontWeight.w300,
                  fontSize: 20.0,
                  letterSpacing: 2.0,
                  wordSpacing: 100.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
