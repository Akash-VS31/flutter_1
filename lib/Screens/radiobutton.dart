import 'package:flutter/material.dart';

class Radioexample extends StatefulWidget {
  const Radioexample({super.key});

  @override
  State<Radioexample> createState() => _RadioexampleState();
}

enum gender { male, female, other }

class _RadioexampleState extends State<Radioexample> {
  var _gender = gender.male;
  var data = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Row(
          children: [
            Radio(
              value: gender.male,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender = value!;
                });
              },
            ),
            Text('male'),
          ],
        ),
        Row(
          children: [
            Radio(
              value: gender.female,
              groupValue: _gender,
              onChanged: (value) {
                setState(() {
                  _gender = value!;
                });
              },
            ),
            Text('Female'),
          ],
        ),
        RadioListTile(
          title: Text("Other"),
          subtitle: Text("For other category"),
          value: gender.other,
          groupValue: _gender,
          onChanged: (value) {
            setState(() {
              _gender = value!;
            });
          },
        ),
        ElevatedButton(
            onPressed: () {
              setState(() {
                data = _gender.name;
              });
            },
            child: Text("View Data")),
        Text(data)
      ]),
    );
  }
}
