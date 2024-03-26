import 'package:flutter/material.dart';
import 'package:new_grad_proj/utli/attendevent.dart';

class Radio_1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Radio_state();
  }
}

String? city;

class Radio_state extends State<Radio_1> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: AppBar(
            automaticallyImplyLeading: false,
          ),
        ),
        body: Column(children: [
          RadioListTile(
            contentPadding: EdgeInsets.all(15),
            activeColor: Colors.blue,
            //tileColor: Colors.grey[300],
            title: Text('item1'),
            value: "item1",
            groupValue: city,
            onChanged: (value) {
              setState(() {
                city = value;
              });
            },
          ),
          RadioListTile(
            contentPadding: EdgeInsets.all(15),
            activeColor: Colors.blue,
            //tileColor: Colors.grey[300],
            title: Text('item2'),
            value: "item2",
            groupValue: city,
            onChanged: (value) {
              setState(() {
                city = value;
              });
            },
          ),
          RadioListTile(
            contentPadding: EdgeInsets.all(15),
            activeColor: Colors.blue,
            // tileColor: Colors.grey[300],
            title: Text('item3'),
            value: "item3",
            groupValue: city,
            onChanged: (value) {
              setState(() {
                city = value;
              });
            },
          ),
          RadioListTile(
            contentPadding: EdgeInsets.all(15),
            activeColor: Colors.blue,
            // tileColor: Colors.grey[300],
            title: Text('item4'),
            value: "item4",
            groupValue: city,
            onChanged: (value) {
              setState(() {
                city = value;
              });
            },
          ),
          RadioListTile(
            contentPadding: EdgeInsets.all(15),
            activeColor: Colors.blue,
            //tileColor: Colors.grey[300],

            title: Text('item5'),
            value: "item5",
            groupValue: city,
            onChanged: (value) {
              setState(() {
                city = value;
              });
            },
          ),
          Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: TextButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Attend_Event())),
                  child: Text(
                    "Done",
                    style: TextStyle(color: Colors.white),
                  )))
        ]));
  }
}
