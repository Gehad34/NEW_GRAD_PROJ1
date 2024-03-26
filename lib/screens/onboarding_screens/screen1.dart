import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_grad_proj/screens/LetsStart.dart';
import 'package:new_grad_proj/screens/onboarding_screens/wiedget/slanding_clipper.dart';

class screen1 extends StatelessWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            /* decoration: BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue, Colors.white]),
        image: DecorationImage(
            alignment: Alignment.topCenter,*/
            children: [
          Container(
            decoration: BoxDecoration(
                /* image: DecorationImage(
              
                image: AssetImage(
                  "assets/images/background1.png",
                ),
                fit: BoxFit.fill,
              ),*/

                ),
            child: Stack(children: [
              Image.asset(
                "assets/images/background1.png",
                fit: BoxFit.fill,
                height: 490,
                width: size.width,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, bottom: 350, left: 300),
                child: TextButton(
                  onPressed: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => LetsStart())),
                  child: Text(
                    "skip",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 313),
                child: ClipPath(
                  clipper: slandingclipper(),
                  child: Container(
                    height: 495,
                    decoration: const BoxDecoration(
                      gradient:
                          LinearGradient(colors: [Colors.blue, Colors.white]),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 500, left: 90, right: 50),
                child: Text(
                  "Text Text,text text text",
                  style: TextStyle(
                      color: Color.fromRGBO(18, 48, 108, 1), fontSize: 40),
                ),
              ),
            ]),
          )
        ]));
  }
}
