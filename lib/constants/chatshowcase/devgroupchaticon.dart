import 'package:flutter/material.dart';

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
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(imageAddress),
      ),
      title: Text(groupName),
      subtitle: Text(memberDetails),
      onTap: onTap,
    );
  }
}
