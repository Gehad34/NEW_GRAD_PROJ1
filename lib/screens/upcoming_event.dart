import 'package:flutter/material.dart';
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
              title: const Text(
                'Upcoming Event',
                style: TextStyle(
                  color: Color(0xff12306C),
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.end,
              ),
              actions: [
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
                    onPressed: () {},
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
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red,
                            border: Border.all(color: Colors.white, width: 1)),
                      ),
                    ],
                  ),
                ),
              ],
              bottom: AppBar(actions: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(16)),
                    child: TextButton(
                      child: const Text(
                        'CreateEvent',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Attend_Event())),
                    )),
                const SizedBox(
                  width: 150,
                ),
                Container(
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
