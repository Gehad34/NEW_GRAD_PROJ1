import 'dart:math';

import 'package:flutter/material.dart';

import 'package:new_grad_proj/widgets/Date_Piker.dart';
import 'package:new_grad_proj/widgets/Time_pick.dart';
import 'package:new_grad_proj/widgets/default%20text%20field.dart';
import 'package:new_grad_proj/widgets/radio_list_government.dart';
import 'package:new_grad_proj/widgets/radio_list_privacy.dart';

class Attend_Event extends StatelessWidget {
  final controltext = TextEditingController();
  Attend_Event({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: true,
          title: Row(children: [
            /* Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.blue),
              child: IconButton(
                  color: Colors.blue,
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Bottom_navy())),
                  icon: const Icon(
                    size: 30,
                    Icons.arrow_back,
                    color: Colors.white,
                  )),
            ),*/
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
          padding: EdgeInsets.only(right: 200, left: 20),
          child: Text(
            'Event Title',
            style: TextStyle(color: Colors.black, fontSize: 20),
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
              child: DefaultTextField(
                controller: TextEditingController(),
                keyboardtype: TextInputType.text,
                labletext: "Enter Here",
                fillcolor: Color.fromARGB(255, 229, 229, 229),
                // suffixicon: ,
                weight: double.infinity,
              ),
            )),
        Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: [
                Text(
                  'Government',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  width: 180,
                ),
                Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: /* Drop_Down()),*/
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: Colors.blue),
                            child: IconButton(
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => Radio_1())),
                              icon: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            )))
              ],
            )),
        /*  Padding(
            padding: EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: [
                Text(
                  'City',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  width: 270,
                ),
                Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ))
              ],
            )),*/
        Padding(
          padding: EdgeInsets.only(right: 200, left: 20, top: 20),
          child: Text(
            'Street',
            style: TextStyle(color: Colors.black, fontSize: 20),
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
              child: DefaultTextField(
                controller: TextEditingController(),
                keyboardtype: TextInputType.text,
                labletext: "Enter Here",
                fillcolor: Color.fromARGB(255, 229, 229, 229),
                // suffixicon: ,
                weight: double.infinity,
              ),
            )),
        Padding(
          padding: EdgeInsets.only(right: 200, left: 20, top: 20),
          child: Text(
            'PlaceName',
            style: TextStyle(color: Colors.black, fontSize: 20),
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
              child: DefaultTextField(
                controller: TextEditingController(),
                keyboardtype: TextInputType.text,
                labletext: "Enter Here",
                fillcolor: Color.fromARGB(255, 229, 229, 229),
                // suffixicon: ,
                weight: double.infinity,
              ),
            )),
        Padding(
          padding: EdgeInsets.only(right: 200, left: 20, top: 20),
          child: Text(
            'Discribtion',
            style: TextStyle(color: Colors.black, fontSize: 20),
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
              child: DefaultTextField(
                controller: TextEditingController(),
                keyboardtype: TextInputType.emailAddress,
                labletext: "Enter Here",
                fillcolor: Color.fromARGB(255, 229, 229, 229),
                // suffixicon: ,
                weight: double.infinity,
              ),
            )),
        Padding(
            padding: EdgeInsets.only(top: 0, left: 20),
            child: Row(children: [
              Pick_Date(),
            ])),
        Padding(
          padding: EdgeInsets.only(right: 200, left: 20, top: 10),
          child: Text(
            'Time',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
        Padding(
            padding: EdgeInsets.only(top: 0, left: 30),
            child: Row(
              children: [pick_time()],
            )),
        // Column(
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'Privacy',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
            SizedBox(
              width: 220,
            ),
            Padding(
                padding: EdgeInsets.only(right: 5, top: 10),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.blue),
                    child: IconButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Radio_2())),
                      icon: Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    )))
            /* Padding(
                padding: EdgeInsets.only(right: 20, left: 20),
                child: /* Theme(
                    data: ThemeData(
                        elevatedButtonTheme: ElevatedButtonThemeData(
                            style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ))),
                    child:*/
                    Row(children: [
                  ElevatedButton(
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
                    style: ButtonStyle(backgroundColor:
                        MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.grey;
                      }
                      return Colors.blue;
                    })),
                  ),
                  SizedBox(
                    width: 80,
                  ),
                  ElevatedButton(
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
                    style: ButtonStyle(backgroundColor:
                        MaterialStateColor.resolveWith(
                            (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed)) {
                        return Colors.grey;
                      }
                      return Colors.blue;
                    })),
                  ),
                ]))*/
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
