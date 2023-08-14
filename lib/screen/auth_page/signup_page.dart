import 'package:flutter/material.dart';

import '../../navigationbarhomescreen.dart';
import 'login_page.dart';
import 'widgets/custom_button.dart';
import 'widgets/custom_text_feild.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          // ignore: avoid_unnecessary_containers
          child: Column(
            children: [
              Image.asset(
                'assests/image/splash3.png',
                height: 320,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(111, 0, 0, 0),
                        offset: Offset(-8, 12),
                        blurRadius: 12.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      const Text(
                        "SIGN UP",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 20),
                      const CustomTextField(
                        hintText: 'User Name',
                        leftIcon: Icons.person_outline,
                      ),
                      const SizedBox(height: 20),
                      const CustomTextField(
                        hintText: 'Email Address',
                        leftIcon: Icons.email_outlined,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        hintText: "Password",
                        obscureText: _obscureText,
                        leftIcon: Icons.lock,
                        rightIcon: _obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                        onRightIconPressed: _togglePasswordVisibility,
                      ),
                      const SizedBox(height: 20),
                      CustomTextField(
                        hintText: "Confirm Password",
                        obscureText: _obscureText,
                        leftIcon: Icons.lock,
                        rightIcon: _obscureText
                            ? Icons.visibility
                            : Icons.visibility_off,
                        onRightIconPressed: _togglePasswordVisibility,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 10),
                        child: SizedBox(
                          width: double.maxFinite,
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: CustomButton(
                              text: "SIGN UP",
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const BottomBar(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Log IN",
                                style: TextStyle(
                                  fontSize: 16.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:travel_app/pages/auth_page/widgets/custom_text_feild.dart';
// import 'package:travel_app/pages/home_pages/home_page.dart';

// import 'forgot_password/forgot_password_start.dart';

// class SignUpPage extends StatefulWidget {
//   const SignUpPage({Key? key}) : super(key: key);

//   @override
//   State<SignUpPage> createState() => _SignUpPageState();
// }

// class _SignUpPageState extends State<SignUpPage> {
//   bool _obscureText = true;

//   void _togglePasswordVisibility() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Container(
//               child: Column(
//                 children: [
//                   const Spacer(),
//                   Image.asset(
//                     'assets/illustration.png',
//                   ),
//                   const SizedBox(height: 40),
//                   const Text(
//                     "Login",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 26,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 20),
//                   const CustomTextField(
//                     hintText: 'User Name',
//                     leftIcon: Icons.person_outline,
//                   ),
//                   const SizedBox(height: 20),
//                   const CustomTextField(
//                     hintText: 'Email Address',
//                     leftIcon: Icons.email_outlined,
//                   ),
//                   const SizedBox(height: 20),
//                   CustomTextField(
//                     hintText: "Password",
//                     obscureText: _obscureText,
//                     leftIcon: Icons.lock,
//                     rightIcon:
//                         _obscureText ? Icons.visibility : Icons.visibility_off,
//                     onRightIconPressed: _togglePasswordVisibility,
//                   ),
//                   const SizedBox(height: 20),
//                   CustomTextField(
//                     hintText: "Confirm Password",
//                     obscureText: _obscureText,
//                     leftIcon: Icons.lock,
//                     rightIcon:
//                         _obscureText ? Icons.visibility : Icons.visibility_off,
//                     onRightIconPressed: _togglePasswordVisibility,
//                   ),
//                   const Spacer(),
//                   Padding(
//                     padding: const EdgeInsets.only(bottom: 30),
//                     child: SizedBox(
//                       width: double.maxFinite,
//                       child: ElevatedButton(
//                         onPressed: () {
//                           Navigator.pushReplacement(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => const HomePage(),
//                             ),
//                           );
//                         },
//                         style: ElevatedButton.styleFrom(
//                           elevation: 0,
//                           shape: const StadiumBorder(),
//                           padding: const EdgeInsets.symmetric(
//                             vertical: 15,
//                             horizontal: 8.0,
//                           ),
//                         ),
//                         child: const Text("Get Started"),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
