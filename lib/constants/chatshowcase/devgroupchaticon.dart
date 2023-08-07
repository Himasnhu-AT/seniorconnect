import 'package:flutter/material.dart';

class DevGroupChatIcon extends StatelessWidget {
  final String imageAddress;
  final String groupName;
  final String memberDetails;
  final VoidCallback onTap;

  const DevGroupChatIcon({
    Key? key,
    required this.imageAddress,
    required this.groupName,
    required this.memberDetails,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(64, 146, 146, 194),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageAddress),
        ),
        title: Text(
          groupName,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          memberDetails,
          style: const TextStyle(
            color: Colors.white70,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
