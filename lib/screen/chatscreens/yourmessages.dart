import 'package:flutter/material.dart';

import '../../constants/Global_Variables.dart';
import '../../constants/chatshowcase/devgroupchaticon.dart';

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
        'memberDetails': 'Long time no see!',
      });
    }

    return chatsData;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: generateChatsData().map((chatData) {
        return DevGroupChatIcon(
          imageAddress: GlobalVariable.groupicon,
          groupName: chatData['groupName']!,
          memberDetails: chatData['memberDetails']!,
          id: chatData['id']!,
          onTap: () {
            // Implement your logic when a chat is tapped
            // You can navigate to the chat screen or perform any other action.
          },
        );
      }).toList(),
    );
  }
}
