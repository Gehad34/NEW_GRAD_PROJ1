import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:new_grad_proj/widgets/commentbottomsheetrReply.dart';

// ignore: must_be_immutable
class comment extends StatelessWidget {
  comment(this.name, this.time, this.title);
  final String name;
  var img;
  final String time;
  final String title;

  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        height: 300,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/Image.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Column(
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        time,
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 200,
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Color(0xff667085),
                  ),
                ],
              ),
            ),
            Text(
              title,
              style: TextStyle(color: Color(0xff667085)),
            ),
            const SizedBox(
              width: 50,
            ),
            TextButton(
                onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Comment_bottom_sheet_Reply())),
                child: Text(
                  'Reply',
                  style: TextStyle(color: Colors.blue),
                )),
            const Divider(
              color: Color(0xff667085),
              thickness: BorderSide.strokeAlignCenter,
              height: 0,
            ),
          ],
        ),
      )
    ]));
  }
}
