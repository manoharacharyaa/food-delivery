import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/view/more/add_cart_view.dart';
import 'package:food_delivery/widget/round_lcon_button.dart';

class PaymentDetailView extends StatefulWidget {
  const PaymentDetailView({super.key});

  @override
  State<PaymentDetailView> createState() => PaymentDetailViewState();
}

class PaymentDetailViewState extends State<PaymentDetailView> {
  List cardArr = [
    {
      "icon": "assets/img/visa_icon.png",
      "card": "**** **** **** 2187",
    }
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
                        "Payment Details",
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
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25, bottom: 5),
                  child: Text(
                    "Customize your payment method",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: TColor.primaryText,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                  child: Divider(
                    color: TColor.secondaryText.withOpacity(0.5),
                    height: 1,
                  ),
                ),
                SizedBox(height: 10),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemCount: cardArr.length,
                  itemBuilder: ((context, index) {
                    var cObj = cardArr[index] as Map? ?? {};
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 10,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 25,
                              right: 25,
                              top: 15,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Cash/Card on delivery",
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: TColor.secondaryText,
                                  ),
                                ),
                                Spacer(),
                                Image.asset(
                                  "assets/img/check.png",
                                  width: 25,
                                  height: 25,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              color: TColor.secondaryText.withOpacity(0.5),
                              height: 1,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Row(
                              children: [
                                Image.asset(
                                  cObj["icon"],
                                  width: 60,
                                  height: 60,
                                ),
                                Spacer(),
                                Text(cObj['card']),
                                Spacer(),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 8,
                                      vertical: 10,
                                    ),
                                    child: Text(
                                      "Delete Card",
                                      style: TextStyle(
                                        color: TColor.primary,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: TColor.primary, width: 1.5),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Divider(
                              color: TColor.secondaryText.withOpacity(0.5),
                              height: 1,
                            ),
                          ),
                          SizedBox(height: 15),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 25,
                              bottom: 20,
                            ),
                            child: Text(
                              "Other Method",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: TColor.secondaryText,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
                SizedBox(height: 60),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: RoundIconButton(
                    assetimage: "assets/img/add.png",
                    iconwidth: 15,
                    text: "Add Another Credit/Debit Card",
                    buttoncolor: TColor.primary,
                    onPressed: () {
                      showModalBottomSheet(
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        context: context,
                        builder: (context) {
                          return AddCartView();
                        },
                      );
                    },
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
