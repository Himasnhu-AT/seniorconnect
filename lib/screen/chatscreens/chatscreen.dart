// change back color of appbar to white and re3move error. aslso add search button
//

import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/Global_Variables.dart';
import 'package:seniorconnect/constants/messagewidget/recievemessagewidget.dart';
import 'package:seniorconnect/constants/messagewidget/sendmessagewidget.dart';

class ChatScreen extends StatefulWidget {
  final String title;

  const ChatScreen({super.key, required this.title});

  @override
  // ignore: library_private_types_in_public_api
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  List<String> messages = [];

  @override
  void initState() {
    super.initState();
    // Add initial messages to the list
    messages.add('Hi!');
    messages.add('Hi!');
  }

  void _sendMessage(String message) {
    setState(() {
      messages.add(message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Navigate back to previous screen
          },
        ),
        backgroundColor: GlobalVariable.backgroundColor,
        title: Text(
          widget.title, // Use the provided title here
          style: const TextStyle(
            fontSize: 25,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ReceiveMessageWidget(message: messages[index]);
              },
            ),
          ),
          SendMessageWidget(
            message: '',
            onMessageSent: _sendMessage,
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: ChatScreen(title: 'Chat Title'),
  ));
}
