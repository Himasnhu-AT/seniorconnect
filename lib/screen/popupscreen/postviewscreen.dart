import 'package:flutter/material.dart';
import 'package:seniorconnect/constants/widget/text_feild_sign.dart';

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
      backgroundColor: const Color.fromARGB(255, 0, 0, 17),
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

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            // Row1: upload image dialog. gets image from system
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Upload Image',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: Container(
                height: 300,
                width: double.infinity,
                color: GlobalVariable.lightbackgroundColor,
                child: const Center(
                  child: Text(
                    'Upload Image',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // Row2: Caption textfield
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Caption',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: CustomTextFieldSign(hintText: 'Write Here'),
            )
            // Row3: Post button
          ],
        ),
      ),
    );
  }
}
