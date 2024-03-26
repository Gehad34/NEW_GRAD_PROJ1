import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class pick_time extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return pick_timeState();
  }
}

class pick_timeState extends State<pick_time> {
  TextEditingController timeinputfrom = TextEditingController();
  //text editing controller for text field
  TextEditingController timeinputto = TextEditingController();
  @override
  void initState() {
    timeinputfrom.text = ""; //set the initial value of text field
    super.initState();
  }

  void toState() {
    timeinputto.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          width: 100,
          padding: EdgeInsets.only(top: 0),
          height: 40,
          child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: TextField(
                controller:
                    timeinputfrom, //editing controller of this TextField
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "From",
                    labelStyle:
                        TextStyle(color: Colors.grey) //label text of field
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
                        DateFormat('HH:mm').format(parsedTime);
                    print(formattedTime); //output 14:59:00
                    //DateFormat() is from intl package, you can format the time on any pattern you need.
                    setState(() {
                      timeinputfrom.text =
                          formattedTime; //set the value of text field.
                    });
                  } else {
                    print("Time is not selected");
                  }
                },
              ))),
      SizedBox(
        width: 100,
      ),
      Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.blue),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          width: 100,
          padding: EdgeInsets.only(top: 0),
          height: 40,
          child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: TextField(
                controller: timeinputto, //editing controller of this TextField
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "To",
                  labelStyle: TextStyle(color: Colors.grey),
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
                        DateFormat('HH:mm').format(parsedTime);
                    print(formattedTime); //output 14:59:00
                    //DateFormat() is from intl package, you can format the time on any pattern you need.
                    setState(() {
                      timeinputto.text =
                          formattedTime; //set the value of text field.
                    });
                  } else {
                    print("Time is not selected");
                  }
                },
              ))),
    ]);
  }
}
