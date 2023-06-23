import 'package:flutter/material.dart';
import '../common/colors.dart';

class RecentItemRow extends StatelessWidget {
  const RecentItemRow({
    super.key,
    required this.rObj,
    required this.onTap,
  });

  final Map rObj;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  rObj["image"],
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 5),
                  Text(
                    rObj["name"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(
                        rObj["type"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 12,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "•",
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          color: TColor.primary,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        rObj["food_type"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 12,
                        ),
                      ),
                    ],
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
                        rObj["rate"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.primary,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        rObj["ratting"],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
