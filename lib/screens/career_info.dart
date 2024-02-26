import 'package:flutter/material.dart';
import 'package:new_grad_proj/clinic_info.dart';

import 'package:new_grad_proj/widgets/default%20text%20field.dart';

class CareerInfo extends StatelessWidget {
  CareerInfo();
  final jobcontroller = TextEditingController();
  final yearscontroller = TextEditingController();
  final depatmentcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Career Information",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Text(
                            " Add yout Career Information",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff858585),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        DefaultTextField(
                          controller: jobcontroller,
                          keyboardtype: TextInputType.text,
                          labletext: "Job Title",
                          fillcolor: Color.fromARGB(255, 229, 229, 229),
                          // suffixicon: ,
                          weight: double.infinity,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DefaultTextField(
                          controller: depatmentcontroller,
                          keyboardtype: TextInputType.text,
                          labletext: "Department Name",
                          fillcolor: Color.fromARGB(255, 229, 229, 229),
                          // suffixicon: ,
                          weight: double.infinity,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        DefaultTextField(
                          controller: yearscontroller,
                          keyboardtype: TextInputType.number,
                          labletext: "Exprience Years",
                          fillcolor: Color.fromARGB(255, 229, 229, 229),
                          weight: double.infinity,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // text5gf (21:2661)
                          child: Text(
                            'Clinic Information',
                            style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff12306c),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(Icons.arrow_circle_right_rounded,
                              color: Colors.blue, size: 25),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ClinicInfo()));
                          },
                          style: TextButton.styleFrom(),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff0072F9)),
                      alignment: Alignment.center,
                      child: Text(
                        "Done",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
