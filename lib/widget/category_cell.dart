import 'package:flutter/material.dart';
import '../common/colors.dart';

class CategoryCell extends StatelessWidget {
  const CategoryCell({
    super.key,
    required this.cObj,
    required this.onTap,
  });

  final Map cObj;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Column(
          children: [
            ClipRRect(
              child: Image.asset(
                cObj["image"],
                width: 85,
                height: 85,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Text(
              cObj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
