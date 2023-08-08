import 'package:flutter/material.dart';

import '../../../constants/Global_Variables.dart';
import 'widget/devgroupchaticon.dart';
import 'widget/chatscreen.dart';

class UsersMessages extends StatefulWidget {
  final int numberOfChats;

  const UsersMessages({Key? key, required this.numberOfChats})
      : super(key: key);

  @override
  State<UsersMessages> createState() => _UsersMessagesState();
}

class _UsersMessagesState extends State<UsersMessages> {
  List<Map<String, String>> generateChatsData() {
    List<Map<String, String>> chatsData = [];

    // Add 'numberOfChats' chat data to the list
    for (int i = 1; i <= widget.numberOfChats; i++) {
      chatsData.add({
        'id':
            'Chat $i ID', // Replace 'Chat $i ID' with actual chat ID from your data
        'groupName': 'Person $i',
        'memberDetails': "Last message in person $i's chat",
      });
    }

    return chatsData;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: generateChatsData().map((chatData) {
        return GestureDetector(
          onTap: () {
            // Navigate to the chat screen
          },
          child: DevGroupChatIcon(
            imageAddress: GlobalVariable.groupicon,
            groupName: chatData['groupName']!,
            memberDetails: chatData['memberDetails']!,
            id: chatData['id']!,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      ChatScreen(title: chatData['groupName']!),
                ),
              );
            },
          ),
        );
      }).toList(),
    );
  }
}
