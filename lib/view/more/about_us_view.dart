import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';

class AboutUsView extends StatefulWidget {
  const AboutUsView({super.key});

  @override
  State<AboutUsView> createState() => PaymentDetailViewState();
}

class PaymentDetailViewState extends State<AboutUsView> {
  List aboutTextArr = [
    "Lorem ipsum dolor sit amet, consectetur adiPiSCing elit. sed do ejusmod temporincididunt ut labore et dolore magna aliqua. Utenim ad minim veniam. quis nostrudexercitation ullamco laboris nisi ut aliquip ex eacommodo consequat Duis aute irure dolor inreprehenderit in voluptate veut esse cillurndolore eu fugiat nulla pariatur- Excepteur sintoccaecat cupidatat non proident. sunt in culpaqui officia deserunt mollit anim id est laborum.",
    "Lorem ipsum dolor sit amet, consectetur adiPiSCing elit. sed do ejusmod temporincididunt ut labore et dolore magna aliqua. Utenim ad minim veniam. quis nostrudexercitation ullamco laboris nisi ut aliquip ex eacommodo consequat Duis aute irure dolor inreprehenderit in voluptate veut esse cillurndolore eu fugiat nulla pariatur- Excepteur sintoccaecat cupidatat non proident. sunt in culpaqui officia deserunt mollit anim id est laborum.",
    "Lorem ipsum dolor sit amet, consectetur adiPiSCing elit. sed do ejusmod temporincididunt ut labore et dolore magna aliqua. Utenim ad minim veniam. quis nostrudexercitation ullamco laboris nisi ut aliquip ex eacommodo consequat Duis aute irure dolor inreprehenderit in voluptate veut esse cillurndolore eu fugiat nulla pariatur- Excepteur sintoccaecat cupidatat non proident. sunt in culpaqui officia deserunt mollit anim id est laborum.",
    "Lorem ipsum dolor sit amet, consectetur adiPiSCing elit. sed do ejusmod temporincididunt ut labore et dolore magna aliqua. Utenim ad minim veniam. quis nostrudexercitation ullamco laboris nisi ut aliquip ex eacommodo consequat Duis aute irure dolor inreprehenderit in voluptate veut esse cillurndolore eu fugiat nulla pariatur.",
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
                        "About Us",
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
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: aboutTextArr.length,
                  itemBuilder: (context, index) {
                    var txt = aboutTextArr[index] as String? ?? "";
                    return Container(
                      margin:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 6,
                            width: 6,
                            decoration: BoxDecoration(
                              color: TColor.primary,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Text(
                              txt,
                              style: TextStyle(
                                color: TColor.primaryText,
                                fontSize: 14,
                              ),
                            ),
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
