import 'package:flutter/material.dart';

import 'package:new_grad_proj/utli/messages.dart';
import 'package:new_grad_proj/widgets/default%20text%20field.dart';

class inbox_page extends StatelessWidget {
  final String dp;
  final String name;
  final String time;
  final String msg;
  final bool isOnline;
  final int counter;
  var SearchController5 = TextEditingController();

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
              padding: EdgeInsets.only(left: 10, right: 40),
              child: Container(
                width: 330,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: DefaultTextField(
                  controller: SearchController5,
                  keyboardtype: TextInputType.text,
                  labletext: "Search By Name",
                  prefixicon: Icons.search,
                  weight: double.infinity,
                ),
              ),
            ),
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
