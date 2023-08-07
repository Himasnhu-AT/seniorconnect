import 'package:flutter/material.dart';

class DevGroupChartCard extends StatelessWidget {
  final String imageAddress;
  final String groupName;
  final String memberDetails;
  final String id;
  final VoidCallback onTap;

  const DevGroupChartCard({
    Key? key,
    required this.imageAddress,
    required this.groupName,
    required this.memberDetails,
    required this.id,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200, // Set a fixed width for the card
      child: Card(
        color: const Color.fromARGB(
            56, 99, 99, 133), // Set the background color of the card
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(imageAddress),
                    radius: 50, // Adjust the radius to make the image larger
                  ),
                  SizedBox(height: 10), // Add some space between image and text
                  Text(
                    groupName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}