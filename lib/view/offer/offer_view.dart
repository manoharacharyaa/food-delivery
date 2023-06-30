import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/widget/popular_resturant_row.dart';
import 'package:food_delivery/widget/round_button.dart';
import '../../widget/view_all_title_row.dart';

class OfferView extends StatefulWidget {
  const OfferView({super.key});

  @override
  State<OfferView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<OfferView> {
  TextEditingController txtSearch = TextEditingController();

  List offerArr = [
    {
      "image": "assets/img/offer_1.png",
      "name": "Cafe de Noir",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cafe",
      "food_type": "Western Food",
    },
    {
      "image": "assets/img/offer_2.png",
      "name": "Isso",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cafe",
      "food_type": "Western Food",
    },
    {
      "image": "assets/img/offer_3.png",
      "name": "Cafe Beans",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cafe",
      "food_type": "Western Food",
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
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Latest Offers",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 23,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find discounts. Otters special \nmeals and more!",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 5),
                  child: SizedBox(
                    width: 150,
                    height: 30,
                    child: RoundButton(
                      title: "Check Offer",
                      onPressed: () {},
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: offerArr.length,
                  itemBuilder: ((context, index) {
                    var cObj = offerArr[index] as Map? ?? {};
                    return PopularResturantRow(
                      cObj: cObj,
                      onTap: () {},
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
