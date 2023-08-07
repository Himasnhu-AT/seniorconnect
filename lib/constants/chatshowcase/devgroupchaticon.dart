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
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageAddress),
        ),
        title: Text(groupName),
        subtitle: Text(memberDetails),
        onTap: onTap,
      ),
    );
  }
}
