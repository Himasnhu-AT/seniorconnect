import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/widget/button.dart';

import '../../../../constants/global_variables.dart';
import '../../../popupscreen/imageviewscreen.dart';

class ShowProfileScreen extends StatefulWidget {
  final String name;
  final String imageAddress;
  final String userID;
  final String email;
  final String phonenumber;
  final String address;

  const ShowProfileScreen({
    Key? key,
    required this.name,
    required this.imageAddress,
    required this.userID,
    required this.email,
    required this.phonenumber,
    required this.address,
  }) : super(key: key);

  @override
  State<ShowProfileScreen> createState() => _ShowProfileScreenState();
}

class _ShowProfileScreenState extends State<ShowProfileScreen> {
  late String name;
  late String imageAddress;
  late String userID;
  late String email;
  late String phonenumber;
  late String address;

  @override
  void initState() {
    super.initState();
    name = widget.name;
    imageAddress = widget.imageAddress;
    userID = widget.userID;
    email = widget.email;
    phonenumber = widget.phonenumber;
    address = widget.address;
  }

  void _openImageView() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageViewScreen(
          title: name,
          imageAddress: GlobalVariable.profilephoto,
        ), // Replace ImageViewScreen with the name of your image view screen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: GlobalVariable.backgroundColor,
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _openImageView();
              },
              child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(GlobalVariable.profilephoto)),
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              email,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              phonenumber,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              address,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            // Add other user details here

            const SizedBox(height: 20),
            CustomButton(
              text: 'Edit',
              onTap: () => {
                // write logic here
              },
            ),
          ],
        ),
      ),
    );
  }
}
