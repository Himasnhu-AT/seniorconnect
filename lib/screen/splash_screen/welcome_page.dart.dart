import 'package:flutter/material.dart';

import '../auth_page/login_page.dart';
import '../auth_page/signup_page.dart';
import '../auth_page/widgets/custom_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Spacer(),
                Image.asset(
                  'assests/image/splash2.png',
                ),
                const SizedBox(height: 40),
                const Text(
                  "Explore your journey \nwith your college seniors",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Get Guidance, Career Advice, \nand from your seniors \nwhile sharing your knowledge,\n experiences with your juniors",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        CustomButton(
                          text: 'LOG IN',
                          onPressed: () => {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            ),
                          },
                        ),
                        const SizedBox(height: 5),
                        const Text('OR'),
                        const SizedBox(height: 5),
                        CustomButton(
                          text: 'SIGN UP',
                          onPressed: () => {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignUpPage(),
                              ),
                            ),
                          },
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
