import 'package:flutter/material.dart';
import 'package:new_grad_proj/utli/event.dart';

class Event_Post extends StatelessWidget {
  Event_Post({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 270,
        child: Card(
            color: Color.fromARGB(255, 255, 255, 255),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: Column(children: [
              Image.asset(
                "assets/images/Image.png",
                fit: BoxFit.cover,
              ),
              Padding(
                  padding: const EdgeInsets.only(
                      right: 2, left: 2, top: 0, bottom: 0),
                  child: Stack(children: [
                    Container(
                      width: 500,
                      height: 60,
                      decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.4),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                    Row(
                      children: [
                        const Column(children: [
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
                        const SizedBox(
                          width: 100,
                        ),
                        Container(
                          width: 50,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(children: [Text("21"), Text('Dec')]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        TextButton(
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.white,
                              iconColor: Colors.blue,
                            ),
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
                                  child: Icon(Icons.arrow_back_ios_outlined))
                            ]))
                      ],
                    )
                  ]))
            ])),
      ),
    );
  }
}
