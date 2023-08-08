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
  bool _isFocused = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: Colors.white),
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
