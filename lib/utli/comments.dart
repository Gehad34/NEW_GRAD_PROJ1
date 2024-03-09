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
              padding: const EdgeInsets.all(0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 20, right: 0),
                    child: Container(
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
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 200, left: 20),
                          child: Text(
                            name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(left: 20, right: 150),
                            child: Text(
                              time,
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 0,
                  ),
                  const Icon(
                    Icons.more_horiz,
                    color: Color(0xff667085),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 210, top: 10),
              child: Text(
                title,
                style: TextStyle(color: Color(0xff667085)),
              ),
            ),
            const SizedBox(
              width: 50,
            ),
            Padding(
              padding: EdgeInsets.only(right: 280, top: 10),
              child: TextButton(
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Comment_bottom_sheet_Reply())),
                  child: Text(
                    'Reply',
                    style: TextStyle(color: Colors.blue),
                  )),
            ),
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
