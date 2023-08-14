// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../../../constants/Global_Variables.dart';

class SendMessageWidget extends StatelessWidget {
  String message;
  final Function(String) onMessageSent;

  SendMessageWidget(
      {super.key, required this.message, required this.onMessageSent});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            style: const TextStyle(
              color: GlobalVariable.textcolor,
            ),
            controller: TextEditingController(text: message),
            onChanged: (newMessage) {
              message = newMessage;
            },
            decoration: InputDecoration(
              hintText: 'Type your message...',
              hintStyle: const TextStyle(
                color: GlobalVariable.textcolor,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.send),
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
