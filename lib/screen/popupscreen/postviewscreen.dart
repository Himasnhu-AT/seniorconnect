import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:seniorconnect/screen/auth_page/widgets/custom_text_feild.dart';

import '../../constants/global_variables.dart';
import '../auth_page/widgets/custom_button.dart';

class PostScreenPopUp extends StatefulWidget {
  const PostScreenPopUp({super.key});

  @override
  State<PostScreenPopUp> createState() => _PostScreenPopUpState();
}

class _PostScreenPopUpState extends State<PostScreenPopUp> {
  List<PlatformFile>? _selectedFiles;

  Future<void> _pickDocuments() async {
    final result = await FilePicker.platform.pickFiles(type: FileType.any);
    if (result != null) {
      setState(() {
        _selectedFiles = result.files;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariable.backgroundColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: GlobalVariable.textcolor),
        backgroundColor: GlobalVariable.backgroundColor,
        title: const Text(
          'Post',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 25,
            color: GlobalVariable.textcolor,
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
                color: GlobalVariable.textcolor,
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
                      color: GlobalVariable.textcolor,
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
                color: GlobalVariable.textcolor,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 5.0,
              ),
              child: CustomTextField(hintText: 'Write Here'),
            ),
            const SizedBox(height: 10),
            CustomButton(
              text: 'Post',
              onPressed: () {},
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
