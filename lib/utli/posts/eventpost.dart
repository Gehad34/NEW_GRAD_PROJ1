import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:new_grad_proj/utli/event.dart';

class Event_Post extends StatelessWidget {
  Event_Post({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 30, top: 10),
          child: Container(
            height: 190,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                image: DecorationImage(
                    image: AssetImage("assets/images/Image.png"),
                    fit: BoxFit.cover)),

            /* child: Card(
            color: Color.fromARGB(255, 255, 255, 255),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              Image.asset(
                "assets/images/Image.png",
                fit: BoxFit.cover,
              ),*/
            child: Padding(
                padding: const EdgeInsets.only(
                    right: 2, left: 2, top: 120, bottom: 5),
                child: Stack(children: [
                  Container(
                    width: 500,
                    height: 90,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.4),
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 35),
                        child: Column(children: [
                          Text('title of event',
                              style: TextStyle(
                                  color: Color(0xff12306C), fontSize: 20)),
                          Text(
                            'city,government',
                            style: TextStyle(
                                color: Color(0xff515968),
                                fontWeight: FontWeight.normal),
                          ),
                        ]),
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(children: [
                          Text("21",
                              style: TextStyle(
                                color: Color(0xff12306C),
                              )),
                          Text('Dec',
                              style: TextStyle(
                                color: Color(0xff12306C),
                              ))
                        ]),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              iconColor: const Color.fromRGBO(33, 150, 243, 1),
                              fixedSize: Size(70, 45)),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => CreateEvent())),
                          child: const Row(children: [
                            Column(children: [
                              Text(
                                'vew ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10),
                              ),
                              Text(
                                'more',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10),
                              ),
                            ]),
                            RotatedBox(
                                quarterTurns: 90,
                                child: Icon(
                                  Icons.arrow_back_ios_outlined,
                                  color: Colors.blueAccent,
                                  size: 20,
                                )),
                          ]))
                    ],
                  ),
                ])),
          ),
        )
      ],
    ));
  }
}
