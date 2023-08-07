import 'package:flutter/material.dart';
import '../../constants/Global_Variables.dart';
import '../../constants/button_splash.dart';
import '../signup/signup.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 20,
          ),
          // Top of the screen, small word "Skip" button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  // Handle Skip button press here
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          // Image in the middle, taking complete width
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            GlobalVariable.splash3,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),

          // Text in the middle section
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CODE CREATE CARE \nWant to learn to code? For now this application is all for coding only :)',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Continue button at the bottom
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: CustomButtonSplash(
              text: 'Sign UP',
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
