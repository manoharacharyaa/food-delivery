import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/widget/round_textfield.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeView> {
  TextEditingController txtSearch = TextEditingController();

  List catArr = [
    {"image": "", "name": ""},
    {"image": "", "name": ""},
    {"image": "", "name": ""},
    {"image": "", "name": ""},
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
