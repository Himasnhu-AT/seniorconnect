import 'package:flutter/material.dart';

class CustomButtonSplash extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomButtonSplash({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
        primary: Colors.white, // Set the background color to white
        onPrimary: Colors.black, // Set the text color to black
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(8.0), // Adjust the border radius as needed
        ),
      ),
      child: Text(
        text,
      ),
    );
  }
}
