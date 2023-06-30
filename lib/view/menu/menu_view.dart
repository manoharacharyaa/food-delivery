import 'package:flutter/material.dart';
import 'package:food_delivery/view/menu/menu_items_view.dart';

import '../../common/colors.dart';

import '../../widget/round_textfield.dart';

class MenuView extends StatefulWidget {
  const MenuView({super.key});

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  TextEditingController txtSearch = TextEditingController();
  List menuArr = [
    {
      "name": "Food",
      "image": "assets/img/menu_1.png",
      "item_count": "120",
    },
    {
      "name": "Beverages",
      "image": "assets/img/menu_2.png",
      "item_count": "220",
    },
    {
      "name": "Desserts",
      "image": "assets/img/menu_3.png",
      "item_count": "155",
    },
    {
      "name": "Promotions",
      "image": "assets/img/menu_4.png",
      "item_count": "25",
    },
  ];
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      body: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            margin: EdgeInsets.only(top: 215),
            width: media.width * 0.25,
            height: media.height * 0.57,
            decoration: BoxDecoration(
              color: TColor.primary,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 7,
                  offset: Offset(0, 4),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
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
                            "Menu",
                            style: TextStyle(
                              color: TColor.primaryText,
                              fontSize: 25,
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
                    SizedBox(height: 10),
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
                    SizedBox(height: 30),
                    ListView.builder(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: menuArr.length,
                      itemBuilder: (context, index) {
                        var mObj = menuArr[index] as Map? ?? {};
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MenuItemsView(mObj: mObj),
                              ),
                            );
                          },
                          child: Stack(
                            alignment: Alignment.centerRight,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                  right: 15,
                                ),
                                width: media.width - 100,
                                height: 90,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(10),
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 7,
                                      offset: Offset(0, 4),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    mObj["image"],
                                    width: 80,
                                    height: 80,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 15),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          mObj["name"],
                                          style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: 22,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          "${mObj["item_count"]} items",
                                          style: TextStyle(
                                            color: TColor.secondaryText,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: 35,
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 4,
                                          offset: Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      "assets/img/btn_next.png",
                                      height: 15,
                                      width: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
