import 'package:flutter/material.dart';
import 'package:new_grad_proj/utli/attendevent.dart';

class Radio_2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Radio_state2();
  }
}

String? privacy;

class Radio_state2 extends State<Radio_2> {
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
            title: Text('private'),
            value: "private",
            groupValue: privacy,
            onChanged: (value) {
              setState(() {
                privacy = value;
              });
            },
          ),
          RadioListTile(
            contentPadding: EdgeInsets.all(15),
            activeColor: Colors.blue,
            //tileColor: Colors.grey[300],
            title: Text('public'),
            value: "public",
            groupValue: privacy,
            onChanged: (value) {
              setState(() {
                privacy = value;
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
