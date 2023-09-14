import 'package:flutter/material.dart';

class Formsample1 extends StatefulWidget {
  const Formsample1({super.key});

  @override
  State<Formsample1> createState() => _Formsample1State();
}


class _Formsample1State extends State<Formsample1> {


  var _loginForm=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _loginForm,
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              validator: (value) {
                if(value!.isEmpty)
                {
                    return 'Please enter email';
                  }
                if( !value.contains('@gmail.com')){
                  return 'Please enter valid email';

                }

                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: TextFormField(
              validator: (value) {
                RegExp regex = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,10}$');
                if(value!.isEmpty )
                {
                  return 'Please enter password';
                }
                else{
                  if (!regex.hasMatch(value)) {
                    return 'Enter valid password';
                  } else {
                    return null;
                  }
                }
                return null;
              },
            ),
          ),
          ElevatedButton(onPressed: () {
            setState(() {
              if(_loginForm.currentState!.validate()){
                // print("Success");
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Success")));
              }
            });
            }, child: Text("Login"))
        ],
      )),
    );
  }
}
