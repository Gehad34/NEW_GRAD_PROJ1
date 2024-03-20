import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:new_grad_proj/screens/notificationspage.dart';
import 'package:new_grad_proj/search.dart';
import 'package:new_grad_proj/utli/attendevent.dart';

import 'package:new_grad_proj/utli/posts/eventpost.dart';

class Upcoming_Event extends StatelessWidget {
  Upcoming_Event({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              actions: [
                Padding(
                  padding: EdgeInsets.only(right: 90, left: 20),
                  child: const Text(
                    'Upcoming Event',
                    style: TextStyle(
                      color: Color(0xff12306C),
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                /* Padding(
                    padding: EdgeInsets.only(left: 0, right: 15),
                    child: Row(children: [
                      Container(
                        width: 40.0,
                        height: 40.0,
                        transformAlignment: Alignment.bottomRight,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        alignment: Alignment.center,
                        child: IconButton(
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Search())),
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        width: 40.0,
                        height: 40.0,
                        alignment: Alignment.center,
                        transformAlignment: Alignment.bottomRight,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                        ),
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: 0, right: 10, left: 0, bottom: 10),
                              child: IconButton(
                                onPressed: () => Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Notification_page())),
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                  size: 30,
                                ),
                              ),
                            ),
                            Container(
                              width: 15,
                              height: 15,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                  border: Border.all(
                                      color: Colors.white, width: 1)),
                            ),
                          ],
                        ),
                      ),
                    ])),*/
              ],
              bottom: AppBar(actions: [
                Padding(
                  padding: EdgeInsets.only(right: 120, left: 10),
                  child: Row(children: [
                    Container(
                        width: 120,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(16)),
                        child: TextButton(
                          child: const Text(
                            'CreateEvent',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) => Attend_Event())),
                        )),
                    const SizedBox(
                      width: 130,
                    ),
                    /* Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(16)),
                      child: TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.filter),
                          label: const Text(
                            'Filter',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),*/
                  ]),
                ),
              ]),
            ),
            body: ListView(
              children: [
                Event_Post(),
                Event_Post(),
                Event_Post(),
                Event_Post(),
              ],
            )));
  }
}
