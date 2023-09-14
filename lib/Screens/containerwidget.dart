import 'package:flutter/material.dart';
class ContainerSample extends StatelessWidget {
  const ContainerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          //color: Colors.green,
          width: 200,
          height: 200,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 20),
         // margin: EdgeInsets.all(50),
          decoration: BoxDecoration(
            color: Colors.yellow,
            border: Border.all(),

            //borderRadius: BorderRadius.all(Radius.circular(50)),
              shape: BoxShape.circle,
            image: const DecorationImage(
              image: NetworkImage('https://docs.flutter.dev/assets/images/dash/dash-fainting.gif')
            )
          ),
          child: const Text("Hello World"),
        ),
      ),
    );
  }
}
