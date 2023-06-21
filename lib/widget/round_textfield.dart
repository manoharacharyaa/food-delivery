import 'package:flutter/material.dart';
import '../common/colors.dart';

class RoundTextfield extends StatelessWidget {
  const RoundTextfield({
    super.key,
    this.controller,
    this.keyboardType,
    this.obscureText = false,
    this.bgcolor,
    this.left,
    required this.hintText,
  });

  final TextEditingController? controller;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgcolor;
  final Widget? left;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor ?? TColor.textfiels,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          if (left != null)
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: left!,
            ),
          Expanded(
            child: TextField(
              autocorrect: false,
              controller: controller,
              obscureText: obscureText,
              keyboardType: keyboardType,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                prefixIcon: left,
                hintText: hintText,
                hintStyle: TextStyle(
                  color: TColor.placeholder,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
