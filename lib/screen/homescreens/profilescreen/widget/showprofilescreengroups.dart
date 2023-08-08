import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/widget/button.dart';

import '../../../../constants/global_variables.dart';
import '../../../popupscreen/imageviewscreen.dart';

class ShowProfileScreenGroupChat extends StatefulWidget {
  final String name;
  final String imageAddress;
  final String groupID;
  final String groupmembers;

  const ShowProfileScreenGroupChat({
    Key? key,
    required this.name,
    required this.imageAddress,
    required this.groupID,
    required this.groupmembers,
  }) : super(key: key);

  @override
  State<ShowProfileScreenGroupChat> createState() => _ShowProfileScreenState();
}

class _ShowProfileScreenState extends State<ShowProfileScreenGroupChat> {
  late String name;
  late String imageAddress;
  late String groupID;
  late String groupmembers;

  @override
  void initState() {
    super.initState();
    name = widget.name;
    imageAddress = widget.imageAddress;
    groupID = widget.groupID;
    groupmembers = widget.groupmembers;
  }

  void _openImageView() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageViewScreen(
          title: name,
          imageAddress: GlobalVariable.profilephoto,
        ), // Replace ImageViewScreen with the name of your image view screen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        backgroundColor: GlobalVariable.backgroundColor,
      ),
      // ignore: sized_box_for_whitespace
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                _openImageView();
              },
              child: const CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage(GlobalVariable.profilephoto)),
            ),
            const SizedBox(height: 20),
            Text(
              name,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              groupID,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              groupmembers,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 20),
            CustomButton(
                text: 'Edit',
                onTap: () => {
                      // write logic here
                    })
          ],
        ),
      ),
    );
  }
}
