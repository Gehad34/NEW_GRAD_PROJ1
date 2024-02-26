import 'package:flutter/material.dart';
import 'package:new_grad_proj/widgets/chatbottomsheet.dart';
import 'package:new_grad_proj/utli/chats_sample.dart';

class Chats extends StatelessWidget {
  final String name;

  final bool isOnline;

  Chats({
    Key? key,
    required this.name,
    required this.isOnline,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        bottom: AppBar(
          title: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  "assets/images/Group 9204.png",
                  height: 45,
                  width: 45,
                ),
              ),
              Positioned(
                bottom: 0.0,
                left: 6.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  height: 11,
                  width: 11,
                  child: Center(
                    child: Container(
                      decoration: BoxDecoration(
                        color: isOnline ? Colors.greenAccent : Colors.grey,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      height: 7,
                      width: 7,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    Text(
                      name,
                    ),
                    Text("activenow")
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 80),
        children: [
          Chat_sample(),
          Chat_sample(),
          Chat_sample(),
          Chat_sample(),
          Chat_sample(),
        ],
      ),
      bottomSheet: Chat_bottom_sheet(),
    );
  }
}
