import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:new_grad_proj/screens/upcoming_event.dart';

class CreateEvent extends StatelessWidget {
  CreateEvent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: 500,
          height: 800,
          decoration: const BoxDecoration(
              color: Colors.grey,
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/event.png'),
                fit: BoxFit.contain,
              )),
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.blue),
                  child: IconButton(
                      color: Colors.blue,
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => Upcoming_Event())),
                      icon: const Icon(
                        size: 30,
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 350),
                child: Container(
                  width: 500,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                  child: const Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 20, left: 140, right: 100, bottom: 40),
                                child: Text(
                                  "About Event",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.description,
                                color: Colors.blue,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Title of event",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal))
                            ],
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.alarm,
                                color: Colors.blue,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 0, right: 200),
                                  child: Text("5 Days",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal)),
                                ),
                                Text("From 15 Sep 11 am to 20 Sep 3 am",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal))
                              ])
                            ],
                          ),
                          SizedBox(
                            width: 120,
                          ),
                          Row(
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: Colors.blue,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Created by",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal)),
                              InkWell(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                // onTap: ,
                                child: Image(
                                    image: AssetImage(
                                        "assets/images/Location.png")),
                              ),
                              Text("name",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Icon(
                                Icons.verified,
                                color: Colors.blue,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 200,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.fmd_good,
                                color: Colors.blue,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 0, right: 200),
                                  child: Text("City",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal)),
                                ),
                                Text("City Place, street, city, government",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal))
                              ])
                            ],
                          ),
                          SizedBox(
                            width: 150,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.public,
                                color: Colors.blue,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Text("Public",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 20,
                                      fontWeight: FontWeight.normal))
                            ],
                          ),
                          SizedBox(
                            width: 350,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.description,
                                color: Colors.blue,
                                size: 30,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Column(children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 0, right: 200),
                                  child: Text("Description",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 20,
                                          fontWeight: FontWeight.normal)),
                                ),
                                Text(
                                    "text text text text text text text text text text ",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal))
                              ])
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 700, left: 20, right: 20),
                  child: Container(
                    width: 400,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.blue,
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Attend',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 20),
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}
