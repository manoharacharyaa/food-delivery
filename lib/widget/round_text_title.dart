import 'package:flutter/material.dart';
import '../common/colors.dart';

class RoundTextTitle extends StatelessWidget {
  const RoundTextTitle({
    super.key,
    this.controller,
    this.title,
    this.keyboardType,
    this.obscureText = false,
    this.bgcolor,
    this.left,
    required this.hintText,
  });

  final TextEditingController? controller;
  final String? title;
  final String hintText;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Color? bgcolor;
  final Widget? left;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        color: bgcolor ?? TColor.searchfiels,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          if (left != null)
            Padding(
              padding: const EdgeInsets.only(left: 10),
            ),
          Expanded(
            child: Stack(
              children: [
                TextField(
                  autocorrect: false,
                  controller: controller,
                  obscureText: obscureText,
                  keyboardType: keyboardType,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(
                      left: 20,
                      top: 17,
                    ),
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
                Container(
                  margin: EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  height: 55,
                  alignment: Alignment.topLeft,
                  child: Text(
                    title.toString(),
                    style: TextStyle(
                      color: TColor.placeholder,
                      fontSize: 11,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
