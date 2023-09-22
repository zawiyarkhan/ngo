// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:app/Views/LikedNGOs.dart';
import 'package:app/Views/user_landing.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  int selectedIndex = 0;

  onItemClicked(int index) {
    setState(() {
      selectedIndex = index;
      tabController!.index = selectedIndex;
    });
  }

  @override
  void initState() {
    //makeNewUser();
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: tabController,
        children: [
          UserLandingPage(),
          LikedNgo(),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), topRight: Radius.circular(10)),
            color: Colors.white),
        //color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GNav(
              selectedIndex: selectedIndex,
              onTabChange: onItemClicked,
              gap: 2,
              backgroundColor: Colors.white,
              //tabBackgroundColor: Colors.grey.shade600,
              color: Colors.black,
              activeColor: Colors.black,
              //rippleColor: Colors.black,
              //hoverColor: Colors.black,
              padding: EdgeInsets.all(10),
              tabs: [
                GButton(
                  icon: Icons.home_filled,
                  text: 'Home',
                  // textStyle: GoogleFonts.roboto(fontSize: 20),
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                  //textSize: 25,
                  // textStyle: GoogleFonts.roboto(fontSize: 20),
                ),
              ]),
        ),
      ),
    );
  }
}
