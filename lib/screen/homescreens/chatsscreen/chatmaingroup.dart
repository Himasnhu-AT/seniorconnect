// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/Global_Variables.dart';
import 'package:seniorconnect/screen/homescreens/chatsscreen/trendinggroups.dart';
import 'package:seniorconnect/screen/homescreens/chatsscreen/yourmessages.dart';

class ShowChatMainScreen extends StatefulWidget {
  static const String routeName = '/home';
  const ShowChatMainScreen({Key? key}) : super(key: key);

  @override
  State<ShowChatMainScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<ShowChatMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Messages',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: GlobalVariable.backgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              'GROUPS',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(height: 5),
            Container(
              // width: double.infinity,
              height: 200,
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: TrendingGroupChat(),
              ),
            ),

            // user chats

            const SizedBox(height: 20),
            const Text(
              'Users',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(height: 5),
            Container(
              width: double.infinity,
              child: const SingleChildScrollView(
                child: UsersMessages(numberOfChats: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
