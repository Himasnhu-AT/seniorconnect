import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/widget/button.dart';
import 'package:seniorconnect/constants/widget/text_feild_sign.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 0, 32),
        title: const Padding(
          padding: EdgeInsets.all(18.0),
          child: Text(
            'Sign IN',
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
                  height: 100,
                ),
                //
                //   username text field
                //
                const Text(
                  'UserName / Email',
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
                const CustomTextFieldSign(hintText: 'UserName / Email'),
                //
                //  password text field
                //
                const SizedBox(
                  height: 50,
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
                const SizedBox(
                  height: 50,
                ),
                //
                //  login button
                //
                CustomButton(text: 'Sign IN', onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
