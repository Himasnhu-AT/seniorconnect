import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_feild.dart';

class ForgotPasswordPasswordDialog extends StatelessWidget {
  const ForgotPasswordPasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 300,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'New Password',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Enter your new password.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CustomTextField(
                    hintText: 'New Password',
                    leftIcon: Icons.lock_outlined,
                  ),
                  const SizedBox(height: 10),
                  const CustomTextField(
                    hintText: 'Confirm Password',
                    leftIcon: Icons.lock_outline,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: 'Change Password',
                    onPressed: () => {
                      Navigator.pop(context),
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
