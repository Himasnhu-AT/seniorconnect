import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/messagewidget/chatscreen.dart';
import 'package:seniorconnect/screen/homescreens/chatmaingroup.dart';
import 'package:seniorconnect/screen/homescreens/homescreen.dart';

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
    const HomeScreen(),
    const ShowChatMainGroup(),
    // const ProfileScreen(),
    ChatScreen()
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
        unselectedItemColor: GlobalVariable.unselectedNavBarColor,
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
                Icons.telegram_outlined,
              ),
            ),
            label: '',
          ),

          // Profile

          // BottomNavigationBarItem(
          //   icon: Container(
          //     width: bottomBarWidth,
          //     decoration: BoxDecoration(
          //       border: Border(
          //         top: BorderSide(
          //           color: _page == 2
          //               ? GlobalVariable.selectedNavBarColor
          //               : GlobalVariable.backgroundColor,
          //           width: bottomBarBorderWidth,
          //         ),
          //       ),
          //     ),
          //     child: const Icon(
          //       Icons.person_outline_outlined,
          //     ),
          //   ),
          //   label: '',
          // ),

          // chat

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
                Icons.chat_bubble_outline_rounded,
              ),
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
