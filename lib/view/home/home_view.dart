import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/widget/most_popular_cell.dart';
import 'package:food_delivery/widget/popular_resturant_row.dart';
import 'package:food_delivery/widget/recent_item_row.dart';
import 'package:food_delivery/widget/round_textfield.dart';

import '../../widget/category_cell.dart';
import '../../widget/view_all_title_row.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List catArr = [
    {
      "image": "assets/img/cat_offer.png",
      "name": "Offer",
    },
    {
      "image": "assets/img/cat_sri.png",
      "name": "Sri Lankan",
    },
    {
      "image": "assets/img/cat_3.png",
      "name": "Itilian",
    },
    {
      "image": "assets/img/cat_4.png",
      "name": "Indian",
    },
  ];

  List popArr = [
    {
      "image": "assets/img/res_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cafe",
      "food_type": "Western Food",
    },
    {
      "image": "assets/img/res_2.png",
      "name": "Cafe de Noir",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cafe",
      "food_type": "Western Food",
    },
    {
      "image": "assets/img/res_3.png",
      "name": "Bakes by Tella",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cafe",
      "food_type": "Western Food",
    },
  ];

  List mostPopArr = [
    {
      "image": "assets/img/m_res_1.png",
      "name": "Minute by tuk tuk",
      "rate": "4.9",
      "ratting": "(124 ratings)",
      "type": "Cafe",
      "food_type": "Western Food",
    },
    {
      "image": "assets/img/m_res_1.png",
      "name": "Cafe de Noir",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cafe",
      "food_type": "Western Food",
    },
  ];

  List recentArr = [
    {
      "image": "assets/img/item_1.png",
      "name": "Mulberry Pizza by Josh",
      "rate": "4.9",
      "ratting": "(124 Ratings)",
      "type": "Cafe",
      "food_type": "Western Food",
    },
    {
      "image": "assets/img/item_2.png",
      "name": "Barita",
      "rate": "4.9",
      "ratting": "(124 Ratings)",
      "type": "Cafe",
      "food_type": "Western Food",
    },
    {
      "image": "assets/img/item_3.png",
      "name": "Pizza Rush Hour",
      "rate": "4.9",
      "ratting": "(124 Ratings)",
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
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Good morning Manohar!",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 20,
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
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Delivering to",
                        style: TextStyle(
                          color: TColor.secondaryText,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Text(
                            "Current Location",
                            style: TextStyle(
                              color: TColor.secondaryText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 25),
                          Image.asset(
                            "assets/img/dropdown.png",
                            width: 15,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: RoundTextfield(
                          hintText: "Search Food",
                          controller: txtSearch,
                          left: Container(
                            alignment: Alignment.center,
                            width: 30,
                            child: Image.asset(
                              "assets/img/search.png",
                              width: 20,
                              height: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: catArr.length,
                    itemBuilder: (context, index) {
                      var cObj = catArr[index] as Map? ?? {};
                      return CategoryCell(
                        cObj: cObj,
                        onTap: () {},
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ViewAllTitleRow(
                    title: "Popular Resturants",
                    onView: () {},
                  ),
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: popArr.length,
                  itemBuilder: ((context, index) {
                    var cObj = popArr[index] as Map? ?? {};
                    return PopularResturantRow(
                      cObj: cObj,
                      onTap: () {},
                    );
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ViewAllTitleRow(
                    title: "Most Popular",
                    onView: () {},
                  ),
                ),
                SizedBox(
                  height: 160,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    itemCount: mostPopArr.length,
                    itemBuilder: (context, index) {
                      var mObj = mostPopArr[index] as Map? ?? {};
                      return MostPopularCell(
                        cObj: mObj,
                        onTap: () {},
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ViewAllTitleRow(
                    title: "Recent Item",
                    onView: () {},
                  ),
                ),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  itemCount: recentArr.length,
                  itemBuilder: (context, index) {
                    var rObj = recentArr[index] as Map? ?? {};
                    return RecentItemRow(
                      rObj: rObj,
                      onTap: () {},
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
