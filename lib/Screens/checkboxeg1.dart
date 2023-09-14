import 'package:flutter/material.dart';
class Checkboxexample extends StatefulWidget {
  const Checkboxexample({super.key});

  @override
  State<Checkboxexample> createState() => _CheckboxexampleState();
}

class _CheckboxexampleState extends State<Checkboxexample> {
 bool valuefirst=false;
 bool valuesecond=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Checkbox Example"),
      ),
      body:Container(
        child: Column(
          children: [
            Text(
              "Checkbox without Header and Subtitle:",
              style: TextStyle(fontSize: 17.0),
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),

                Checkbox(
                  checkColor: Colors.greenAccent,
                  activeColor: Colors.red,
                  value: this.valuefirst,
                  onChanged:(bool? value) {
                  setState(() {
                    this.valuefirst=value!;
                  });
                },),
                Checkbox(
                    value:this.valuesecond,
                    onChanged:(bool? value) {
                      setState(() {
                        this.valuesecond=value!;
                      });
                    },)
              ],
            )
          ],
        ),
      )
      );
  }
}
