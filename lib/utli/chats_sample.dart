import 'package:custom_clippers/custom_clippers.dart';
import 'package:flutter/material.dart';

class Chat_sample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: EdgeInsets.only(right: 80),
        child: ClipPath(
          clipper: UpperNipMessageClipper(MessageType.receive),
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Text(
              "hi,howareyou?",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
      Container(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 89),
            child: ClipPath(
              clipper: UpperNipMessageClipper(MessageType.send),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  "hi,iamfine",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
            ),
          )),
    ]));
  }
}
