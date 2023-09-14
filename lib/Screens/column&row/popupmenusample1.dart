import 'package:flutter/material.dart';
class Popupmenueg1 extends StatefulWidget {
  const Popupmenueg1({super.key});

  @override
  State<Popupmenueg1> createState() => _Popupmenueg1State();
}

class _Popupmenueg1State extends State<Popupmenueg1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(child: Text("search")),
              PopupMenuItem(child: Text("save")),
              PopupMenuItem(child: Text("click")),
              PopupMenuItem(child: Text("next")),
            ];
            },)
        ],
      ),
    );
  }
}
