import 'package:flutter/material.dart';
import '../common/colors.dart';

class RoundTextfield extends StatelessWidget {
  const RoundTextfield({
    super.key,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    required this.hintText,
  });

  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TColor.textfiels,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        autocorrect: false,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: TColor.placeholder,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
