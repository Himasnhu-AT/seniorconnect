import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/Global_Variables.dart';

class DevGroupChatIcon extends StatelessWidget {
  final String imageAddress;
  final String groupName;
  final String memberDetails;
  final String id;
  final VoidCallback onTap;

  const DevGroupChatIcon({
    Key? key,
    required this.imageAddress,
    required this.groupName,
    required this.memberDetails,
    required this.id,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: ListTile(
        tileColor: const Color.fromARGB(56, 99, 99, 133),
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageAddress),
        ),
        title: Text(
          groupName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          memberDetails,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
