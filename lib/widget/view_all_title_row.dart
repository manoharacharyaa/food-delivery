import 'package:flutter/material.dart';
import '../common/colors.dart';

class ViewAllTitleRow extends StatelessWidget {
  const ViewAllTitleRow({
    super.key,
    required this.title,
    required this.onView,
  });

  final String title;
  final VoidCallback onView;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: TColor.primaryText,
            fontSize: 20,
            fontWeight: FontWeight.w800,
          ),
        ),
        TextButton(
          onPressed: onView,
          child: Text(
            "View all",
            style: TextStyle(
              color: TColor.primary,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}
