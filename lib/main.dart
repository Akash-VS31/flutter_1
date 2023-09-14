import 'package:flutter/material.dart';
import 'package:flutter_1/Screens/column&row/popupmenusample1.dart';
import 'package:flutter_1/Screens/imageflutter.dart';
import 'package:flutter_1/Screens/radiobutton.dart';
import 'package:flutter_1/Screens/checkboxeg1.dart';
import 'package:flutter_1/Screens/textsample.dart';

import 'Screens/formexample.dart';
import 'Screens/textfield.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Imagesample1(),

    );
  }
}
