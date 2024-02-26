import 'package:flutter/material.dart';

import 'package:new_grad_proj/utli/messages.dart';

class inbox_page extends StatelessWidget {
  final String dp;
  final String name;
  final String time;
  final String msg;
  final bool isOnline;
  final int counter;

  inbox_page({
    Key? key,
    required this.dp,
    required this.name,
    required this.time,
    required this.msg,
    required this.isOnline,
    required this.counter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        bottom: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 0, left: 0),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 0, right: 50),
                      child: Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[300]),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w100)),
                        ),
                      )),
                  SizedBox(
                    width: 0,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 0, right: 0),
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      transformAlignment: Alignment.bottomRight,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      alignment: Alignment.center,
                      child: IconButton(
                        padding: const EdgeInsets.all(0),
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: ListView(
        children: [
          message_page(
              dp: 'nn',
              name: 'name',
              time: '3',
              msg: 'hi,howareyou',
              isOnline: true,
              counter: 1),
          message_page(
              dp: 'nn',
              name: 'name',
              time: '3',
              msg: 'hi,howareyou',
              isOnline: true,
              counter: 7),
          message_page(
              dp: 'nn',
              name: 'name',
              time: '3',
              msg: 'hi,howareyou',
              isOnline: true,
              counter: 5),
          message_page(
              dp: 'nn',
              name: 'name',
              time: '3',
              msg: 'hi,howareyou',
              isOnline: true,
              counter: 4)
        ],
      ));
}
