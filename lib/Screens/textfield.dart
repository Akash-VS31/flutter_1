import 'package:flutter/material.dart';

class TextFieldSample extends StatefulWidget {
  const TextFieldSample({super.key});

  @override
  State<TextFieldSample> createState() => _TextFieldSampleState();
}

class _TextFieldSampleState extends State<TextFieldSample> {
var nameController=TextEditingController();
var data="";
  bool isVisible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: TextField(
              controller: nameController,
              obscureText: isVisible,
              decoration: InputDecoration(
                // prefixIcon: Icon(Icons.visibility),
                prefixText:"Mr.",
                suffixIcon: isVisible?Icon(Icons.visibility):Icon(Icons.visibility_off),

                hintText: "Enter name",
                label: Text("Name"),
                border: OutlineInputBorder()
              ),
            ),
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              data=nameController.text;
            });

          }, child: Text("Click Here")),
          OutlinedButton(onPressed: () {

          }, child: Text("Outlined")),
          TextButton(onPressed: () {

          }, child: Text("TextBtn")),
          Text(data)
        ],
      ),
    );
  }
}
