// ignore_for_file: sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/Global_Variables.dart';
import 'package:seniorconnect/screen/chatscreens/trendinggroups.dart';
import 'package:seniorconnect/screen/chatscreens/yourmessages.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to Senior Connect',
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
              'Trending Groups',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
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
            //
            //
            const SizedBox(height: 20),
            //
            //
            const Text(
              'Your Messages',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 5),
            Container(
              width: double.infinity,
              height: 400,
              child: const SingleChildScrollView(
                child: UsersMessages(numberOfChats: 5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
