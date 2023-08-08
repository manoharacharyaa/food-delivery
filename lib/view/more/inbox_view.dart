import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';

class InboxView extends StatefulWidget {
  const InboxView({super.key});

  @override
  State<InboxView> createState() => InboxViewState();
}

class InboxViewState extends State<InboxView> {
  List inboxArr = [
    {
      "title": "MealMonkey Promotions",
      "detail":
          "corem Ipsum cotor Sit amet, \nconsectetur adlplsclng ellt. sed do",
      "date": "8th July"
    },
    {
      "title": "MealMonkey Promotions",
      "detail":
          "corem Ipsum cotor Sit amet, \nconsectetur adlplsclng ellt. sed do",
      "date": "8th July",
    },
    {
      "title": "MealMonkey Promotions",
      "detail":
          "corem Ipsum cotor Sit amet, \nconsectetur adlplsclng ellt. sed do",
      "date": "8th July",
    },
    {
      "title": "MealMonkey Promotions",
      "detail":
          "corem Ipsum cotor Sit amet, \nconsectetur adlplsclng ellt. sed do",
      "date": "8th July",
    },
    {
      "title": "MealMonkey Promotions",
      "detail":
          "corem Ipsum cotor Sit amet, \nconsectetur adlplsclng ellt. sed do",
      "date": "8th July",
    },
    {
      "title": "MealMonkey Promotions",
      "detail":
          "corem Ipsum cotor Sit amet, \nconsectetur adlplsclng ellt. sed do",
      "date": "8th July",
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
                        "Inbox",
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
                  itemCount: inboxArr.length,
                  separatorBuilder: (context, index) => Divider(
                    indent: 25,
                    endIndent: 25,
                    color: TColor.secondaryText.withOpacity(0.4),
                    height: 1,
                  ),
                  itemBuilder: (context, index) {
                    var cObj = inboxArr[index] as Map? ?? {};
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
                                cObj["detail"],
                                maxLines: 2,
                                style: TextStyle(
                                  color: TColor.secondaryText,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                cObj["date"],
                                style: TextStyle(
                                  color: TColor.secondaryText,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 15),
                              Icon(
                                Icons.star_border_outlined,
                                color: TColor.primary,
                                size: 17,
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
