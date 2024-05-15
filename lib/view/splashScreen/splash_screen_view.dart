import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Update import statement
import 'package:medic_meditation/view/onBoarding/onboarding_view.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
   @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const OnBoardingView(),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Scaffold(

      body: Stack(
        children: [
          Image.asset(
            "assets/images/sp_bg.png",
            height: media.size.height,
          ),
          Center(
            child: SvgPicture.asset(
              'assets/images/logo.svg',
              semanticsLabel: 'My SVG Image',
              height: media.size.height*.80,
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}
