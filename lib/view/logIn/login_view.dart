import 'package:flutter/material.dart';
import 'package:medic_meditation/view/home/home_view.dart';
import 'package:medic_meditation/view/signUp/signup_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    return Scaffold(
      body: Container(
          color: const Color(0xFF253334),
          height: media.size.height,
          width: media.size.width,
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.only(top: 120, left: 25, right: 25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // logo image ----------------------

                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.asset(
                          'assets/images/Logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),

                      // sign in text ----------------------

                      const Text(
                        'Sign In',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Alegreya',
                            color: Colors.white,
                            fontSize: 30),
                      ),
                      const Text(
                        "Sign in now to access your exercises and saved music.",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Email Address',
                            contentPadding: EdgeInsets.symmetric(horizontal: 5),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white24),
                            ),
                            hintStyle: TextStyle(color: Colors.white24),
                          ),
                        ),
                      ),

                      //--------------> password TextField <--------------//
                      const TextField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          contentPadding: EdgeInsets.symmetric(horizontal: 5),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white24),
                          ),
                          hintStyle: TextStyle(color: Colors.white24),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),

                      //--------------> forget password text <--------------//
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Forget Password?',
                          style: TextStyle(color: Colors.white60),
                        ),
                      ),

                      //--------------> login button <--------------//
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: SizedBox(
                          width: media.size.width,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HomeView(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF7C9A92),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ) // Set the background color here
                                ),
                            child: const Text(
                              'LOGIN',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),

                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Don’t have an account?",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),

                          // signup text button ----------------------

                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpView(),
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: const Text(
                              " Sign Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Alegreya',
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: media.size.width,
                  child: Image.asset(
                    'assets/images/login.png',
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          )),
    );
  }
}
