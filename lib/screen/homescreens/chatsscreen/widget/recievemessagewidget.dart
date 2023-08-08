import 'package:flutter/material.dart';

class ReceiveMessageWidget extends StatelessWidget {
  final String message;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  ReceiveMessageWidget({required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 3, 7, 125),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
