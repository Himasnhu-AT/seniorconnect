import 'package:flutter/material.dart';
import 'package:seniorconnect/screen/homescreens/mainscreen/homescreen.dart';
import 'package:seniorconnect/screen/homescreens/profilescreen/mainprofilescreen.dart';
import 'package:seniorconnect/screen/popupscreen/postviewscreen.dart';

import 'constants/Global_Variables.dart';
// import 'package:badges/badges.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    HomeScreen(),
    const PostScreenPopUp(),
    const ProfileScreen(),
    // ChatScreen()
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariable.selectedNavBarColor,
        unselectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        backgroundColor: GlobalVariable.backgroundColor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          // Home

          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? GlobalVariable.selectedNavBarColor
                        : GlobalVariable.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.home_outlined,
                size: 28,
              ),
            ),
            label: '',
          ),

          // message

          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? GlobalVariable.selectedNavBarColor
                        : GlobalVariable.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.file_upload_outlined,
                size: 28,
              ),
            ),
            label: '',
          ),

          // Profile

          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? GlobalVariable.selectedNavBarColor
                        : GlobalVariable.backgroundColor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.person_outline_outlined,
                size: 28,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
