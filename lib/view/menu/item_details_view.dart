import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_delivery/widget/round_lcon_button.dart';
import '../../common/colors.dart';

class ItemDetailsView extends StatefulWidget {
  const ItemDetailsView({super.key});

  @override
  State<ItemDetailsView> createState() => _ItemDetailsViewState();
}

class _ItemDetailsViewState extends State<ItemDetailsView> {
  TextEditingController txtSearch = TextEditingController();

  double price = 15;
  int qty = 1;
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0XFFF5F5F5),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/img/detail_top.png",
            width: media.width,
            height: media.width,
            fit: BoxFit.cover,
          ),
          Container(
            width: media.width,
            height: media.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.black,
                  Colors.transparent,
                  Colors.black,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: media.width - 100),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(35),
                              topRight: Radius.circular(35),
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 35),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Text(
                                  "Tandori Chicken Pizza",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        RatingBar.builder(
                                          itemSize: 25,
                                          initialRating: 3,
                                          minRating: 1,
                                          glow: false,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 2.0, vertical: 5),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: TColor.primary,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          " 4 Star Rating",
                                          style: TextStyle(
                                            color: TColor.primary,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        SizedBox(height: 4),
                                        Text(
                                          "\$${price.toStringAsFixed(2)}",
                                          style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: 35,
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text(
                                          "/per Portion",
                                          style: TextStyle(
                                            color: TColor.primaryText,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Text(
                                  "Description",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Text(
                                  "Lorem Ipsum dolor Sit amet, consectetur adplsctng drest eut .Ornare leo non rnollls ld cursus. Eu eusmod fauclbus Inleo malesuada",
                                  style: TextStyle(
                                    color: TColor.secondaryText,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Divider(
                                  color: TColor.secondaryText.withOpacity(0.5),
                                  height: 1,
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Text(
                                  "Customise your order",
                                  style: TextStyle(
                                    color: TColor.primaryText,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  decoration: BoxDecoration(
                                    color: TColor.searchfiels,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      isExpanded: true,
                                      items: ["small", "Big"].map((e) {
                                        return DropdownMenuItem(
                                          value: e,
                                          child: Text(
                                            e,
                                            style: TextStyle(
                                              color: TColor.primaryText,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (val) {},
                                      hint: Text(
                                        "- Select the size of portion -",
                                        style: TextStyle(
                                          color: TColor.secondaryText,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 15),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                  padding: EdgeInsets.symmetric(horizontal: 15),
                                  decoration: BoxDecoration(
                                    color: TColor.searchfiels,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton(
                                      isExpanded: true,
                                      items: ["small", "Big"].map((e) {
                                        return DropdownMenuItem(
                                          value: e,
                                          child: Text(
                                            e,
                                            style: TextStyle(
                                              color: TColor.primaryText,
                                              fontSize: 15,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                      onChanged: (val) {},
                                      hint: Text(
                                        "- Select the ingredients -",
                                        style: TextStyle(
                                          color: TColor.secondaryText,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 25),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 25),
                                child: Row(
                                  children: [
                                    Text(
                                      "Number of Portions",
                                      style: TextStyle(
                                        color: TColor.primaryText,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    Spacer(),
                                    SizedBox(width: 8),
                                    InkWell(
                                      onTap: () {
                                        qty = qty - 1;
                                        if (qty < 1) {
                                          qty = 1;
                                        }
                                        setState(() {});
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        height: 25,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: TColor.primary,
                                          borderRadius:
                                              BorderRadius.circular(12.5),
                                        ),
                                        child: Text(
                                          "-",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      height: 25,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border:
                                            Border.all(color: TColor.primary),
                                        borderRadius:
                                            BorderRadius.circular(12.5),
                                      ),
                                      child: Text(
                                        qty.toString(),
                                        style: TextStyle(
                                          color: TColor.primary,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 8),
                                    InkWell(
                                      onTap: () {
                                        qty = qty + 1;
                                        setState(() {});
                                      },
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15),
                                        height: 25,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: TColor.primary,
                                          borderRadius:
                                              BorderRadius.circular(12.5),
                                        ),
                                        child: Text(
                                          "+",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                              SizedBox(
                                height: media.height * 0.27,
                                child: Stack(
                                  alignment: Alignment.centerLeft,
                                  children: [
                                    Container(
                                      width: media.width * 0.27,
                                      height: media.height * 0.2,
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
                                    Center(
                                      child: Stack(
                                        alignment: Alignment.centerRight,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                              top: 8,
                                              bottom: 8,
                                              right: 20,
                                              left: 10,
                                            ),
                                            width: media.width - 90,
                                            height: media.height * 0.15,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(35),
                                                topRight: Radius.circular(10),
                                                bottomLeft: Radius.circular(35),
                                                bottomRight:
                                                    Radius.circular(10),
                                              ),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 7,
                                                  offset: Offset(0, 4),
                                                ),
                                              ],
                                            ),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  "Total Price",
                                                  style: TextStyle(
                                                    color: TColor.primaryText,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                Text(
                                                  "\$${(price * qty).toString()}",
                                                  style: TextStyle(
                                                    color: TColor.primaryText,
                                                    fontSize: 21,
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),
                                                SizedBox(height: 10),
                                                SizedBox(
                                                  width: media.width * 0.45,
                                                  height: media.height * 0.04,
                                                  child: RoundIconButton(
                                                    text: "Add To Cart",
                                                    assetimage:
                                                        "assets/img/shopping_add.png",
                                                    iconwidth: 25,
                                                    buttoncolor: TColor.primary,
                                                    onPressed: () {},
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: 45,
                                            height: 45,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(22.5),
                                              boxShadow: const [
                                                BoxShadow(
                                                  color: Colors.black12,
                                                  blurRadius: 5,
                                                  offset: Offset(0, 2),
                                                  spreadRadius: 2,
                                                ),
                                              ],
                                            ),
                                            alignment: Alignment.center,
                                            child: Image.asset(
                                              "assets/img/shopping_cart.png",
                                              height: 20,
                                              width: 20,
                                              color: TColor.primary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: media.width - 20,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(right: 5),
                      child: InkWell(
                        onTap: () {
                          isFav = !isFav;
                          print(isFav);
                          setState(() {});
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 45),
                          child: Image.asset(
                            isFav
                                ? "assets/img/favorites_btn.png"
                                : "assets/img/favorites_btn_2.png",
                            width: 70,
                            height: 70,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Column(
              children: [
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Image.asset(
                          "assets/img/btn_back.png",
                          width: 20,
                          height: 20,
                          color: Colors.white,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          "assets/img/shopping_cart.png",
                          width: 25,
                          height: 25,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
