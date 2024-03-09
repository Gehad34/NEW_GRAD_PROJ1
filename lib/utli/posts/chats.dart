import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            title: Row(children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/images/Group 9204.png",
                    height: 45,
                    width: 45,
                  )),
              /* Positioned(
                bottom: 0.0,
                left: 5.0,
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
              ),*/
              Padding(
                padding: EdgeInsets.only(left: 0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 0, right: 50),
                      child: Text(
                        name,
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 21, right: 50),
                        child: Text("Active now",
                            style: TextStyle(
                                fontSize: 15, color: Colors.grey[500])))
                  ],
                ),
              ),
            ]),
          ),
        ),
        body: Stack(children: [
          ListView(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 80),
            children: [
              Chat_sample(),
              Chat_sample(),
              Chat_sample(),
              Chat_sample(),
              Chat_sample(),
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Row(children: [
                Container(
                    height: 65,
                    decoration: BoxDecoration(
                      color: Colors
                          .white, /* boxShadow: [
        BoxShadow(
            color: Colors.grey.withOpacity(.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3))
      ]*/
                    ),
                    child: Row(children: [
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: RotatedBox(
                              quarterTurns: 45,
                              child: IconButton(
                                  onPressed: () {
                                    showModalBottomSheet(
                                        context: context,
                                        builder: (context) {
                                          return Container(
                                            width: 400,
                                            height: 300,
                                            child: Padding(
                                              padding: EdgeInsets.only(top: 30),
                                              child: Column(
                                                children: [
                                                  const Text(
                                                    'ShareContent',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        fontSize: 20),
                                                  ),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons
                                                                .camera_alt_outlined,
                                                            color: Colors.blue,
                                                            size: 30,
                                                          )),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      const Text(
                                                        'Camera',
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons.edit_document,
                                                            color: Colors.blue,
                                                            size: 30,
                                                          )),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      const Text(
                                                        'Document',
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                          onPressed: () {},
                                                          icon: const Icon(
                                                            Icons
                                                                .photo_album_outlined,
                                                            color: Colors.blue,
                                                            size: 30,
                                                          )),
                                                      const SizedBox(
                                                        width: 15,
                                                      ),
                                                      const Text(
                                                        'Media',
                                                        style: TextStyle(
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        });
                                  },
                                  icon: Icon(Icons.attachment_outlined)))),
                      Padding(
                          padding: EdgeInsets.only(left: 30),
                          child: Container(
                            alignment: Alignment.centerRight,
                            width: 200,
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "write your message",
                                border: InputBorder.none,
                              ),
                            ),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 0),
                        child: RotatedBox(
                          quarterTurns: 180,
                          child: IconButton(
                            icon: Icon(
                              Icons.send,
                              color: Colors.blue,
                              size: 30,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      )
                    ]))
              ]))
        ]));
  }
}
