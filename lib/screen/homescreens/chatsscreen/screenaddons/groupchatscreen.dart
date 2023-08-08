import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/Global_Variables.dart';
import 'package:seniorconnect/screen/homescreens/chatsscreen/widget/recievemessagewidget.dart';
import 'package:seniorconnect/screen/homescreens/chatsscreen/widget/sendmessagewidget.dart';
import 'package:seniorconnect/screen/homescreens/profilescreen/widget/showprofilescreengroups.dart';

class GroupChatScreen extends StatefulWidget {
  final String title;

  const GroupChatScreen({super.key, required this.title});

  @override
  // ignore: library_private_types_in_public_api
  _GroupChatScreenState createState() => _GroupChatScreenState();
}

class _GroupChatScreenState extends State<GroupChatScreen> {
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
          color: Colors.white,
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
                builder: (context) => const ShowProfileScreenGroupChat(
                  name: 'FakeGroupDetails.name',
                  imageAddress: 'FakeGroupDetails.photoUrl',
                  groupID: 'FakeGroupDetails.organizerId',
                  groupmembers: 'FakeGroupDetails.organizer',
                ),
              ),
            );
          },
          child: Text(
            widget.title, // Use the provided title here
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
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
    home: GroupChatScreen(title: 'Chat Title'),
  ));
}
