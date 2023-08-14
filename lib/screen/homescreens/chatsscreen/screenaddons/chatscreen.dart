// change back color of appbar to white and re3move error. aslso add search button
//

import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/Global_Variables.dart';
import 'package:seniorconnect/constants/test_data/fake_usr_details.dart';
import 'package:seniorconnect/screen/homescreens/chatsscreen/widget/recievemessagewidget.dart';
import 'package:seniorconnect/screen/homescreens/chatsscreen/widget/sendmessagewidget.dart';
import 'package:seniorconnect/screen/homescreens/profilescreen/widget/showprofilescreenchats.dart';

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
          icon: const Icon(Icons.arrow_back),
          color: GlobalVariable.textcolor,
          onPressed: () {
            Navigator.pop(context); // Navigate back to previous screen
          },
        ),
        backgroundColor: GlobalVariable.backgroundColor,
        title: GestureDetector(
          // Navigate to the profile screen
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ShowProfileScreen(
                        name: widget.title,
                        imageAddress: FakeUserDetails.imageAddress,
                        userID: FakeUserDetails.userID,
                        email: FakeUserDetails.email,
                        phonenumber: FakeUserDetails.phonenumber,
                        address: FakeUserDetails.address,
                      )),
            );
          },
          child: Text(
            widget.title, // Use the provided title here
            style: const TextStyle(
              fontSize: 25,
              color: GlobalVariable.textcolor,
              fontWeight: FontWeight.w500,
            ),
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
