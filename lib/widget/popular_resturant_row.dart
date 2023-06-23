import 'package:flutter/material.dart';
import '../common/colors.dart';

class PopularResturantRow extends StatelessWidget {
  const PopularResturantRow({
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                cObj["image"],
                width: double.maxFinite,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 8),
            Text(
              cObj["name"],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: TColor.primaryText,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  "assets/img/rate.png",
                  width: 10,
                  height: 10,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 3),
                Text(
                  cObj["rate"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primary,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  cObj["type"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 12,
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  cObj["food_type"],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
