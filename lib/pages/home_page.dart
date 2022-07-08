import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
      int day=2;
    String name="hello";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("game1 app"),
      ),
        body: Center(
          child: Container(
            child: Text("$name  $day"),
          ),
        ),
        drawer: Drawer(),
      );
  }
}