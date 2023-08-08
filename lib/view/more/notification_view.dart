import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';

class NotificationsView extends StatefulWidget {
  const NotificationsView({super.key});

  @override
  State<NotificationsView> createState() => NotificationsState();
}

class NotificationsState extends State<NotificationsView> {
  List notificationArr = [
    {
      "title": "Your orders has been picked up",
      "time": "Now",
    },
    {
      "title": "Your order has been delivered",
      "time": "1h ago",
    },
    {
      "title": "Lorem Ipsum dolor Sit amet. consectetur",
      "time": "3h ago",
    },
    {
      "title": "Lorem Ipsum dolor sit amet. consectetur",
      "time": "5h ago",
    },
    {
      "title": "Lorem Ipsum dolor sit amet. consectetur",
      "time": "08 Jul 2023",
    },
    {
      "title": "Lorem Ipsum dolor sit amet. consectetur",
      "time": "09 Jul 2023",
    },
    {
      "title": "Lorem Ipsum dolor sit amet. consectetur",
      "time": "10 Jul 2023",
    },
    {
      "title": "Lorem Ipsum dolor sit amet. consectetur",
      "time": "11 Jul 2023",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/img/btn_back.png",
                          width: 20,
                          height: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Notification",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 23,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/img/shopping_cart.png",
                          width: 25,
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: notificationArr.length,
                  separatorBuilder: (context, index) => Divider(
                    indent: 25,
                    endIndent: 25,
                    color: TColor.secondaryText.withOpacity(0.4),
                    height: 1,
                  ),
                  itemBuilder: (context, index) {
                    var cObj = notificationArr[index] as Map? ?? {};
                    return Container(
                      // decoration: BoxDecoration(
                      //   color: index % 2 == 0 ? Colors.white : TColor.textfiels,
                      // ),
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: TColor.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                cObj["title"],
                                style: TextStyle(
                                  color: TColor.primaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                cObj["time"],
                                style: TextStyle(
                                  color: TColor.secondaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
