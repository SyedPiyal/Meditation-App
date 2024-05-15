import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

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
          Positioned(
            left: 70,
            top: 150,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Logo.png',
                  height: 250,
                  width: 200,
                ),
                const Text(
                  "WELCOME",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Alegreya',
                      color: Colors.white,
                      fontSize: 25),
                ),
                const Text(
                  "Do meditation. Stay focused.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
                const Text(
                  "Live a healthy life.",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white),
                ),
              ],
            ),
          ),
          Positioned(
            left: 50,
            bottom: 100,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                //--------------> button <--------------//
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF7C9A92),
                      maximumSize: const Size(300, 100),
                      minimumSize: const Size(250, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ) // Set the background color here
                      ),
                  child: const Text(
                    'Login With Email',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                const Row(
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: TextStyle(
                          fontWeight: FontWeight.w300, color: Colors.white),
                    ),
                    Text(
                      " Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Alegreya',
                          color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
