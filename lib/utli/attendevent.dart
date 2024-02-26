import 'dart:math';

import 'package:flutter/material.dart';
import 'package:new_grad_proj/screens/upcoming_event.dart';
import 'package:new_grad_proj/widgets/Date_Piker.dart';
import 'package:new_grad_proj/widgets/Time_pick.dart';

class Attend_Event extends StatelessWidget {
  final controltext = TextEditingController();
  Attend_Event({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.blue),
              child: IconButton(
                  color: Colors.blue,
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Upcoming_Event())),
                  icon: const Icon(
                    size: 30,
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),
            const Text(
              " Event Information",
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
            ),
          ])),
      body: ListView(children: [
        Padding(
          padding: EdgeInsets.only(right: 230),
          child: Text(
            'Event Title',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 40,
              width: 392,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  border: Border.all(width: sqrt1_2, color: Colors.blue)),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: 'EnterHere',
                  hintStyle: TextStyle(fontWeight: FontWeight.w100),
                  border: InputBorder.none,
                ),
              ),
            )),
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Text(
                  'Government',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  width: 200,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ))
              ],
            )),
        Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              children: [
                Text(
                  'City',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  width: 280,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ))
              ],
            )),
        Padding(
          padding: EdgeInsets.only(right: 260),
          child: Text(
            'Street',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 40,
              width: 392,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: sqrt1_2, color: Colors.blue)),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: 'EnterHere',
                  hintStyle: TextStyle(fontWeight: FontWeight.w100),
                  border: InputBorder.none,
                ),
              ),
            )),
        Padding(
          padding: EdgeInsets.only(right: 260),
          child: Text(
            'PlaceName',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 40,
              width: 392,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: sqrt1_2, color: Colors.blue)),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: 'EnterHere',
                  hintStyle: TextStyle(fontWeight: FontWeight.w100),
                  border: InputBorder.none,
                ),
              ),
            )),
        Padding(
          padding: EdgeInsets.only(right: 260),
          child: Text(
            'Discribtion',
            style: TextStyle(color: Colors.blue, fontSize: 20),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Container(
              height: 40,
              width: 392,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(width: sqrt1_2, color: Colors.blue)),
              child: TextFormField(
                controller: TextEditingController(),
                decoration: InputDecoration(
                  hintText: 'EnterHere',
                  hintStyle: TextStyle(fontWeight: FontWeight.w100),
                  border: InputBorder.none,
                ),
              ),
            )),
        Padding(
            padding: EdgeInsets.only(top: 0),
            child: Row(
              children: [pick_time()],
            )),
        Padding(
            padding: EdgeInsets.only(top: 0),
            child: Row(children: [
              Pick_Date(),
            ])),
        Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 200, left: 0),
              child: Text(
                'Privacy',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: Row(children: [
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Public",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.public,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 140,
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8)),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            "Private",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Icon(
                            Icons.private_connectivity_rounded,
                            size: 30,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ]))
          ],
        ),
        Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Container(
              width: 400,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.blue,
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Save Edit',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                ),
              ),
            )),
      ]));
}
