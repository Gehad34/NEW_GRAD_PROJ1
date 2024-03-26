import "package:flutter/material.dart";
import "package:new_grad_proj/screens/onboarding_screens/screen1.dart";
import "package:new_grad_proj/screens/onboarding_screens/screen2.dart";
import "package:new_grad_proj/screens/onboarding_screens/screen3.dart";
import "package:smooth_page_indicator/smooth_page_indicator.dart";

class OnBoardingScreens extends StatefulWidget {
  const OnBoardingScreens({Key? key}) : super(key: key);
  // _onboardingscreenstate CreateState() => _onboardingscreenstate();

  @override
  State<StatefulWidget> createState() => _onboardingscreenstate();
}

class _onboardingscreenstate extends State<OnBoardingScreens> {
  final PageController _controller = PageController();
  final pages = [screen1(), screen2(), screen3()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [screen1(), screen2(), screen3()],
          ),
          Container(
            alignment: Alignment(0, 0.75),
            child: SmoothPageIndicator(
              count: 3,
              effect: const WormEffect(
                activeDotColor: Colors.blue,
                dotHeight: 5.0,
              ),
              controller: _controller,
            ),
          ),
        ],
      ),
    );
  }
}
