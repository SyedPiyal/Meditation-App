import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_meditation/view/home/home_view.dart';
import 'package:medic_meditation/view/music/music_view.dart';
import 'package:medic_meditation/view/profile/profile_view.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class BottomNavigationView extends StatefulWidget {
  const BottomNavigationView({Key? key}) : super(key: key);

  @override
  State<BottomNavigationView> createState() => _BottomNavigationViewState();
}

class _BottomNavigationViewState extends State<BottomNavigationView> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  /// widget list
  final List<Widget> bottomBarPages = [
    const HomeView(),
    const MusicView(),
    const ProfileView(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: bottomBarPages,
      ),
      bottomNavigationBar: WaterDropNavBar(
        backgroundColor: Colors.white,
        waterDropColor: const Color(0xFF253334),
        onItemSelected: (index) {
          setState(() {
            _currentIndex = index;
            _pageController.jumpToPage(index);
          });
        },
        selectedIndex: _currentIndex,
        barItems: [
          BarItem(
            filledIcon: Icons.home,
            outlinedIcon: Icons.home_outlined,
          ),
          BarItem(
            filledIcon: Icons.music_note,
            outlinedIcon: Icons.music_note_outlined,
          ),
          BarItem(
            filledIcon: Icons.person,
            outlinedIcon: Icons.person_outline,
          ),
        ],
      ),
    );
  }
}
