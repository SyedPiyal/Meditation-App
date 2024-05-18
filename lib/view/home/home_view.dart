import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF253334),
      appBar: AppBar(
        backgroundColor: const Color(0xFF253334),

        // leading for navigation drawer ----------------------

        leading: Padding(
          padding: const EdgeInsets.only(left: 25, top: 15),
          child: InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/ic_menu.png',
            ),
          ),
        ),
        leadingWidth: 50,
        centerTitle: true,

        // title ----------------------

        title: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: SizedBox(
            height: 70,
            width: 70,
            child: Image.asset(
              'assets/images/Logo.png',
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Profile Icons ----------------------

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25, top: 15),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(5),
              child: Image.asset(
                'assets/images/ic_profile.png',
                height: 40,
                width: 40,
              ),
            ),
          ),
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back, Afreen!',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Alegreya',
                  color: Colors.white,
                  fontSize: 30),
            ),
            Text(
              "How are you feeling today ?",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
