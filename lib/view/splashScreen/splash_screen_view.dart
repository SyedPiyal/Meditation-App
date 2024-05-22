import 'dart:async';
import 'package:flutter/material.dart';
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
          SizedBox(
            height: media.size.height,
            width: media.size.width,
            child: Image.asset(
              "assets/images/sp_bg.png",
              fit: BoxFit.fitHeight,
            ),
          ),
          Center(
            child: Image.asset(
              'assets/images/logo.svg',
              height: media.size.height*.80,
              width: 70,
            ),
          ),
        ],
      ),
    );
  }
}
