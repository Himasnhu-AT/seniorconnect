import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seniorconnect/constants/widget/button.dart';
import 'package:seniorconnect/constants/widget/text_feild_sign.dart';

import '../../constants/global_variables.dart';

class PostScreenPopUp extends StatefulWidget {
  const PostScreenPopUp({super.key});

  @override
  State<PostScreenPopUp> createState() => _PostScreenPopUpState();
}

class _PostScreenPopUpState extends State<PostScreenPopUp> {
  List<PlatformFile>? _selectedFiles;

  Future<void> _pickDocuments() async {
    try {
      final result = await FilePicker.platform.pickFiles(type: FileType.any);
      if (result != null) {
        setState(() {
          _selectedFiles = result.files;
        });
      }
    } on PlatformException catch (e) {
      print("Error while picking documents: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 17),
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
            const SizedBox(height: 10),
            const Text(
              'Upload Image',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: _pickDocuments,
              child: Container(
                height: 300,
                width: double.infinity,
                color: GlobalVariable.lightbackgroundColor,
                child: Center(
                  child: Text(
                    _selectedFiles == null ? 'Upload Image' : 'Image Uploaded',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
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
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: 'Post',
              onTap: () {
                // Write the logic for posting here
                if (_selectedFiles != null) {
                  // Get the selected image file
                  PlatformFile selectedFile = _selectedFiles![0];
                  print('Selected file: ${selectedFile.name}');
                }
              },
            )
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(home: Scaffold(body: PostScreenPopUp())));
}
