import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/view/menu/item_details_view.dart';
import 'package:food_delivery/widget/menu_item_row.dart';
import 'package:food_delivery/widget/round_textfield.dart';

class MenuItemsView extends StatefulWidget {
  final Map mObj;
  const MenuItemsView({super.key, required this.mObj});

  @override
  State<MenuItemsView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MenuItemsView> {
  TextEditingController txtSearch = TextEditingController();

  List menuItemsArr = [
    {
      "image": "assets/img/dess_1.png",
      "name": "French Apple Pie",
      "rate": "4.9",
      "ratting": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts",
    },
    {
      "image": "assets/img/dess_2.png",
      "name": "Dark Chocolate Cake",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cakes by Tella",
      "food_type": "Desserts",
    },
    {
      "image": "assets/img/dess_3.png",
      "name": "Street Shake",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cafe Racer",
      "food_type": "Desserts",
    },
    {
      "image": "assets/img/dess_4.png",
      "name": "Fudgy Chewy Brownies",
      "rate": "4.9",
      "ratting": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts",
    },
    {
      "image": "assets/img/dess_1.png",
      "name": "French Apple Pie",
      "rate": "4.9",
      "ratting": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts",
    },
    {
      "image": "assets/img/dess_2.png",
      "name": "Dark Chocolate Cake",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cakes by Tella",
      "food_type": "Desserts",
    },
    {
      "image": "assets/img/dess_3.png",
      "name": "Street Shake",
      "rate": "4.9",
      "ratting": "124",
      "type": "Cafe Racer",
      "food_type": "Desserts",
    },
    {
      "image": "assets/img/dess_4.png",
      "name": "Fudgy Chewy Brownies",
      "rate": "4.9",
      "ratting": "124",
      "type": "Minute by tuk tuk",
      "food_type": "Desserts",
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
                        "Deserts",
                        style: TextStyle(
                          color: TColor.primaryText,
                          fontSize: 23,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(width: 185),
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
                SizedBox(height: 25),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: menuItemsArr.length,
                  itemBuilder: ((context, index) {
                    var mObj = menuItemsArr[index] as Map? ?? {};
                    return MenuItemRow(
                      mObj: mObj,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ItemDetailsView(),
                          ),
                        );
                      },
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
