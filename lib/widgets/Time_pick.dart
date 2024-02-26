import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class pick_time extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return pick_timeState();
  }
}

class pick_timeState extends State<pick_time> {
  TextEditingController timeinput = TextEditingController();
  //text editing controller for text field

  @override
  void initState() {
    timeinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          width: 150,
          padding: EdgeInsets.only(top: 0),
          height: 70,
          child: Center(
              child: TextField(
            controller: timeinput, //editing controller of this TextField
            decoration: InputDecoration(
                icon: Icon(
                  Icons.timer,
                  size: 40,
                  color: Colors.blue,
                ), //icon of text field
                labelText: "From",
                labelStyle: TextStyle(color: Colors.blue) //label text of field
                ),
            readOnly:
                true, //set it true, so that user will not able to edit text
            onTap: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ColorScheme.light(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      onSurface: Colors.blueAccent,
                    )),
                    child: child!,
                  );
                },
                initialTime: TimeOfDay.now(),
                context: context,
              );

              if (pickedTime != null) {
                print(pickedTime.format(context)); //output 10:51 PM
                DateTime parsedTime = DateFormat.jm()
                    .parse(pickedTime.format(context).toString());
                //converting to DateTime so that we can further format on different pattern.
                print(parsedTime); //output 1970-01-01 22:53:00.000
                String formattedTime =
                    DateFormat('HH:mm:ss').format(parsedTime);
                print(formattedTime); //output 14:59:00
                //DateFormat() is from intl package, you can format the time on any pattern you need.
                setState(() {
                  timeinput.text = formattedTime; //set the value of text field.
                });
              } else {
                print("Time is not selected");
              }
            },
          ))),
      SizedBox(
        width: 20,
      ),
      Container(
          width: 150,
          padding: EdgeInsets.only(top: 0),
          height: 70,
          child: Center(
              child: TextField(
            controller: timeinput, //editing controller of this TextField
            decoration: InputDecoration(
              icon: Icon(
                Icons.timer,
                size: 40,
                color: Colors.blue,
              ), //icon of text field
              labelText: "To",
              labelStyle: TextStyle(color: Colors.blue),
              //label text of field
            ),
            readOnly:
                true, //set it true, so that user will not able to edit text
            onTap: () async {
              TimeOfDay? pickedTime = await showTimePicker(
                builder: (context, child) {
                  return Theme(
                    data: Theme.of(context).copyWith(
                        colorScheme: ColorScheme.light(
                      primary: Colors.blue,
                      onPrimary: Colors.white,
                      onSurface: Colors.blueAccent,
                    )),
                    child: child!,
                  );
                },
                initialTime: TimeOfDay.now(),
                context: context,
              );

              if (pickedTime != null) {
                print(pickedTime.format(context)); //output 10:51 PM
                DateTime parsedTime = DateFormat.jm()
                    .parse(pickedTime.format(context).toString());
                //converting to DateTime so that we can further format on different pattern.
                print(parsedTime); //output 1970-01-01 22:53:00.000
                String formattedTime =
                    DateFormat('HH:mm:ss').format(parsedTime);
                print(formattedTime); //output 14:59:00
                //DateFormat() is from intl package, you can format the time on any pattern you need.
                setState(() {
                  timeinput.text = formattedTime; //set the value of text field.
                });
              } else {
                print("Time is not selected");
              }
            },
          ))),
    ]);
  }
}
