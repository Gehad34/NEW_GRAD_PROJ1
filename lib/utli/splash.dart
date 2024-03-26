import 'dart:async';
//import 'package:new_grad_proj/screens/LetsStart.dart';
import 'package:flutter/material.dart';
import 'package:new_grad_proj/screens/onboarding_screens/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => OnBoardingScreens()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/images/Logo-removebg.png"))),
            ),
            Container(
              child: Text("AbilityLink",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff0B8FAC))),
            )
          ],
        ),
      ),
    );
  }
}
