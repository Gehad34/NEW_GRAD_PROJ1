import 'package:flutter/material.dart';

class Guidelines_ontap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/guidelines2.png"),
              fit: BoxFit.fill),
        )));
  }
}
