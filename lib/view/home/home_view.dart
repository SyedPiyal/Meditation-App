import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_meditation/view/home/widgets/container.dart';
import 'package:medic_meditation/view/home/widgets/items.dart';

import '../../utils/strings/strings.dart';

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

      //--------------> Body <--------------//
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Welcome back, Afreen!',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Alegreya',
                    color: Colors.white,
                    fontSize: 20),
              ),
              const Text(
                "How are you feeling today ?",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                    color: Colors.white),
              ),

              // item list ----------------------

              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ItemWidgets(
                        imagePath: 'assets/images/ic_calm.png',
                        itemTitle: 'Calm'),
                    ItemWidgets(
                        imagePath: 'assets/images/ic_relax.png',
                        itemTitle: 'Relax'),
                    ItemWidgets(
                        imagePath: 'assets/images/ic_focus.png',
                        itemTitle: 'Focus'),
                    ItemWidgets(
                        imagePath: 'assets/images/ic_anxious.png',
                        itemTitle: 'Anxious'),
                  ],
                ),
              ),

              // container for video ----------------------
              ContainerWidget(
                  imagesPath: meditationImagePath,
                  listTitle: "Meditation 101",
                  listSubTitle:
                      "Techniques, Benefits, and a Beginner’s How-To..."),
              const SizedBox(
                height: 20,
              ),
              ContainerWidget(
                  imagesPath: meditationImagePath,
                  listTitle: "Cardio Meditation",
                  listSubTitle:
                      "Basics of Yoga for Beginners ..."),
              const SizedBox(
                height: 10,
              )
            ],
          ),
        ),
      ),

    );
  }
}
