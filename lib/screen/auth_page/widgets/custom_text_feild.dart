import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final IconData? leftIcon;
  final IconData? rightIcon;
  final Function()? onRightIconPressed;

  const CustomTextField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    this.leftIcon,
    this.rightIcon,
    this.onRightIconPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
          prefixIcon: leftIcon != null ? Icon(leftIcon) : null,
          suffixIcon: rightIcon != null
              ? IconButton(
                  onPressed: onRightIconPressed,
                  icon: Icon(rightIcon),
                )
              : null,
        ),
      ),
    );
  }
}
