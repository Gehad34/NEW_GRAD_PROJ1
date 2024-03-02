import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:new_grad_proj/screens/commentpage.dart';

// ignore: must_be_immutable
class userposts extends StatelessWidget {
  userposts(this.name, this.time, this.title, this.isOnline);
  final String name;
  var img;
  final String time;
  final String title;
  final bool isOnline;
  var dp;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
        height: 325,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        "assets/images/Group 9204.png",
                      ),
                      radius: 25,
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
                              color:
                                  isOnline ? Colors.greenAccent : Colors.grey,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            height: 7,
                            width: 7,
                          ),
                        ),
                      ),
                    )
                  ]),
                  SizedBox(
                    width: 10,
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
                ]),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            title,
            style: TextStyle(color: Color(0xff667085)),
          ),
          const SizedBox(
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Container(
              height: 185,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage("assets/images/userpost2.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 45.0, top: 10, bottom: 0),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                  ),
                  color: Colors.red,
                  disabledColor: Color(0xff667085),
                  onPressed: () {
                    print('love');
                  },
                ),
                SizedBox(
                  width: 20,
                ),
                IconButton(
                    icon: Icon(
                      Icons.comment_rounded,
                      color: Colors.grey,
                    ),
                    onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => comment_page(),
                          ),
                        )),
                Text('472'),
                SizedBox(
                  width: 50,
                ),
                IconButton(
                  icon: Icon(
                    Icons.bookmark_border,
                  ),
                  disabledColor: Colors.white,
                  color: Colors.grey,
                  onPressed: () {
                    print('saved');
                  },
                ),
                SizedBox(
                  width: 50,
                ),
                Icon(
                  CupertinoIcons.share_solid,
                  color: Color(0xff667085),
                )
              ],
            ),
          ),
          const Divider(
            color: Color(0xff667085),
            thickness: BorderSide.strokeAlignCenter,
            height: 0,
          ),
        ]),
      ),
    ]));
  }
}
