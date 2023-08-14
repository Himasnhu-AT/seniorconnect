import 'package:flutter/material.dart';
import 'package:seniorconnect/screen/splash_screen/welcome_page.dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 0, 6),
        ).copyWith(
          background: const Color.fromARGB(255, 1, 0, 32),
        ),
      ),
      home: const WelcomePage(),
    );
  }
}
