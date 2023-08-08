import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';

class ImageViewScreen extends StatelessWidget {
  final String title;
  final String imageAddress;
  const ImageViewScreen(
      {super.key, required this.title, required this.imageAddress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: GlobalVariable.backgroundColor,
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.pop(context); // Close the image view when tapped
          },
          child: Image.asset(imageAddress),
        ),
      ),
    );
  }
}
