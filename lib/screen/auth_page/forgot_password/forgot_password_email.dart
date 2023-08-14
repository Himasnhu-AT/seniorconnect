import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_feild.dart';
import 'forgot_password_password.dart';

class ForgotPasswordEmailDialog extends StatelessWidget {
  const ForgotPasswordEmailDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 250,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'User Verification',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Enter your email address to verify your account.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const CustomTextField(
                    hintText: 'Email Address',
                    leftIcon: Icons.email_outlined,
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: 'Verify',
                    onPressed: () => {
                      Navigator.pop(context),
                      showDialog(
                        context: context,
                        builder: (context) =>
                            const ForgotPasswordPasswordDialog(),
                      ),
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
