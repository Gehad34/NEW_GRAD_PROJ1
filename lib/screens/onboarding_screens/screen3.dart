import 'package:flutter/material.dart';
import 'package:new_grad_proj/screens/LetsStart.dart';
import 'package:new_grad_proj/screens/onboarding_screens/wiedget/slanding_clipper.dart';

class screen3 extends StatelessWidget {
  const screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                "assets/images/background3 (2).png",
                fit: BoxFit.fill,
                height: 490,
                width: size.width,
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
              Padding(
                  padding: EdgeInsets.only(top: 620, left: 110, right: 50),
                  child: Container(
                    width: 170,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.blue,
                    ),
                    margin: EdgeInsets.all(5),
                    child: TextButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LetsStart())),
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Text(
                              "Start Now",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            RotatedBox(
                                quarterTurns: 90,
                                child: Icon(
                                  Icons.chevron_left,
                                  color: Colors.white,
                                  size: 30,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ))
            ]),
          )
        ]));
  }
}
