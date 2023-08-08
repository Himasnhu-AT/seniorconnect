import 'package:flutter/material.dart';

import '../../constants/global_variables.dart';

class PostScreenPopUp extends StatefulWidget {
  const PostScreenPopUp({super.key});

  @override
  State<PostScreenPopUp> createState() => _PostScreenPopUpState();
}

class _PostScreenPopUpState extends State<PostScreenPopUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // things to have:
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: GlobalVariable.backgroundColor,
        title: const Text(
          'Post',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      // Row1: upload image dialog. gets image from system
      // Row2: Caption textfield
      // Row3: Post button
    );
  }
}
