import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/button.dart';
import 'package:seniorconnect/constants/text_feild_sign.dart';

import '../login/login.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 0, 32),
        title: const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            'Sign UP',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //
                // start of main UI
                //
                const SizedBox(
                  height: 50,
                ),
                //
                //   College Email text field
                //
                const Text(
                  'College Email',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                //
                const SizedBox(
                  height: 10,
                ),
                //
                const CustomTextFieldSign(hintText: 'College Email'),
                //
                const SizedBox(
                  height: 25,
                ),
                //
                //   username text field
                //
                const Text(
                  'UserName',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                //
                const SizedBox(
                  height: 10,
                ),
                //
                const CustomTextFieldSign(hintText: 'UserName'),
                //
                const SizedBox(
                  height: 25,
                ),
                //
                //   Phone Number text field
                //
                const Text(
                  'Phone Number',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                //
                const SizedBox(
                  height: 10,
                ),
                //
                const CustomTextFieldSign(hintText: 'Phone Number'),

                //
                //  password text field
                //
                const SizedBox(
                  height: 25,
                ),
                //
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                //
                const SizedBox(
                  height: 10,
                ),
                //
                const CustomTextFieldSign(hintText: 'Password'),

                //
                //  Confirm password text field
                //
                const SizedBox(
                  height: 25,
                ),
                //
                const Text(
                  'Confirm Password',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                //
                const SizedBox(
                  height: 10,
                ),
                //
                const CustomTextFieldSign(hintText: 'Confirm Password'),
                //
                const SizedBox(
                  height: 25,
                ),
                //
                //  login button
                //
                CustomButton(
                  text: 'Sign UP',
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Loginpage(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
