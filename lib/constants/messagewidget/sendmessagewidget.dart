// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class SendMessageWidget extends StatelessWidget {
  String message;
  final Function(String) onMessageSent;

  SendMessageWidget({required this.message, required this.onMessageSent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: TextEditingController(text: message),
            onChanged: (newMessage) {
              message = newMessage;
            },
            decoration: InputDecoration(
              hintText: 'Type your message...',
              hintStyle: TextStyle(
                color: Colors.white,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            if (message.isNotEmpty) {
              onMessageSent(message);
              message = '';
            }
          },
        ),
      ],
    );
  }
}
