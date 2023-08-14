import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'forgot_password_email.dart';

class ForgotPasswordDialog extends StatelessWidget {
  const ForgotPasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SizedBox(
          height: 210,
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Forgot Password?',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'If you cannot change your password, please contact support',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomButton(
                    text: 'Continue',
                    onPressed: () => {
                      Navigator.pop(context),
                      showDialog(
                        context: context,
                        builder: (context) => const ForgotPasswordEmailDialog(),
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
