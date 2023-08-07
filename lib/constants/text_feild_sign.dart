import 'package:flutter/material.dart';

class CustomTextFieldSign extends StatefulWidget {
  final String hintText;

  const CustomTextFieldSign({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CustomTextFieldSignState createState() => _CustomTextFieldSignState();
}

class _CustomTextFieldSignState extends State<CustomTextFieldSign> {
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: widget.hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white70,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white70,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        labelText: _isFocused ? widget.hintText : "",
        labelStyle: const TextStyle(
          color: Colors.white70,
        ),
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your ${widget.hintText}';
        }
        return null;
      },
      onTap: () {
        setState(() {
          _isFocused = true;
        });
      },
      onFieldSubmitted: (value) {
        setState(() {
          _isFocused = value.isEmpty;
        });
      },
    );
  }
}
