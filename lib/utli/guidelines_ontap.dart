import 'package:flutter/material.dart';

class Guidelines_ontap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: AppBar(),
        ),
        body: Container(
            height: 600,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/guidelines2.png"),
                  fit: BoxFit.fill),
            ),
            child: Padding(
              padding: EdgeInsets.all(50),
              child: Text(
                "Get to know them as an individual, with their own interests, strengths, and challenges. Focus on getting to know their personality and preferences, just like you would with any other child.",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            )));
  }
}
