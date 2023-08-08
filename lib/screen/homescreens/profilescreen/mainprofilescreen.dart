// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:seniorconnect/screen/homescreens/profilescreen/widget/showprofilescreen.dart';

import '../../../constants/global_variables.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const ShowProfileScreen(
      name: 'UserName',
      imageAddress: GlobalVariable.profilephoto,
      userID: '1',
      address: 'nitkkr, kurukshetra',
      email: 'usr@email.com',
      phonenumber: '+91(000)000-0000',
    );

    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text(
    //       'Profile',
    //       style: TextStyle(
    //         fontSize: 25,
    //         fontWeight: FontWeight.w600,
    //         color: Colors.white,
    //       ),
    //     ),
    //     backgroundColor: GlobalVariable.backgroundColor,
    //   ),
    //   body: Container(
    //     width: double.infinity,
    //     child: Column(
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: [
    //         const SizedBox(height: 20),
    //         GestureDetector(
    //           onTap: () {
    //             _openImageView();
    //           },
    //           child: const CircleAvatar(
    //               radius: 100,
    //               backgroundImage: AssetImage(GlobalVariable.profilephoto)),
    //         ),
    //         const SizedBox(height: 20),
    //         const Text(
    //           'Username',
    //           style: TextStyle(
    //             fontSize: 20,
    //             fontWeight: FontWeight.bold,
    //             color: Colors.white,
    //           ),
    //         ),
    //         const SizedBox(height: 10),
    //         const Text(
    //           'user@example.com',
    //           style: TextStyle(
    //             fontSize: 16,
    //             color: Colors.white,
    //           ),
    //         ),
    //         const SizedBox(height: 10),
    //         const Text(
    //           '+1234567890',
    //           style: TextStyle(
    //             fontSize: 16,
    //             color: Colors.white,
    //           ),
    //         ),
    //         const SizedBox(height: 10),
    //         const Text(
    //           'Address',
    //           style: TextStyle(
    //             fontSize: 16,
    //             color: Colors.white,
    //           ),
    //         ),
    //         const SizedBox(height: 10),
    //         // Add other user details here

    //         const SizedBox(height: 20),
    //         ElevatedButton(
    //           onPressed: () {
    //             // Implement the logic for the edit button here
    //           },
    //           child: const Text('Edit'),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
