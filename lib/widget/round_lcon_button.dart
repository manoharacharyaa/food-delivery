import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({
    super.key,
    required this.assetimage,
    this.iconwidth,
    required this.text,
    required this.buttoncolor,
    required this.onPressed,
    this.fontSize = 16,
    this.widthSpace = 8,
    this.fontWeight = FontWeight.w500,
  });

  final String assetimage;
  final double? iconwidth;
  final String text;
  final Color buttoncolor;
  final VoidCallback onPressed;
  final double fontSize;
  final double widthSpace;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 56,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: buttoncolor,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              assetimage,
              width: iconwidth,
            ),
            SizedBox(width: widthSpace),
            Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
