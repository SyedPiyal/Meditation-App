import 'package:flutter/material.dart';
import 'package:medic_meditation/view/logIn/login_view.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                width: 200,
                child: Image.asset(
                  'assets/images/Logo.png',
                  fit: BoxFit.cover,
                ),
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
              const SizedBox(height: 150,),
              //--------------> button <--------------//
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                      MaterialPageRoute(
                        builder: (context) => const LoginView(),
                        ),
                  );
                },
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
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
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

        ],
      ),
    );
  }
}
