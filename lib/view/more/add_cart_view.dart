import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/widget/round_lcon_button.dart';
import 'package:food_delivery/widget/round_textfield.dart';

class AddCartView extends StatefulWidget {
  const AddCartView({super.key});

  @override
  State<AddCartView> createState() => _AddCartViewState();
}

class _AddCartViewState extends State<AddCartView> {
  TextEditingController txtCardNumber = TextEditingController();
  TextEditingController txtCardMonth = TextEditingController();
  TextEditingController txtCardYear = TextEditingController();
  TextEditingController txtCardCode = TextEditingController();
  TextEditingController txtFirstName = TextEditingController();
  TextEditingController txtLastName = TextEditingController();
  bool isAnyTime = false;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: media.width * 0.0001),
      width: media.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text(
                    "Add Credit/Debit card",
                    style: TextStyle(
                      color: TColor.primaryText,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: TColor.primaryText,
                    size: 25,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Divider(
                color: TColor.secondaryText.withOpacity(0.5),
                height: 1,
              ),
            ),
            SizedBox(height: 15),
            RoundTextfield(
              hintText: 'Card Number',
              controller: txtCardNumber,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),
            Row(
              children: [
                SizedBox(width: 10),
                Text(
                  "Expiry",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: TColor.primaryText,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: 120,
                  child: RoundTextfield(
                    hintText: "MM",
                    controller: txtCardYear,
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(width: 15),
                SizedBox(
                  width: 120,
                  child: RoundTextfield(
                    hintText: "YY",
                    controller: txtCardYear,
                    keyboardType: TextInputType.number,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            RoundTextfield(
              hintText: 'Security Code',
              controller: txtCardCode,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),
            RoundTextfield(
              hintText: 'First Name',
              controller: txtFirstName,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),
            RoundTextfield(
              hintText: 'Last Name',
              controller: txtLastName,
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "You can remove this card at anytime",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: TColor.secondaryText,
                  ),
                ),
                Spacer(),
                Switch(
                  value: isAnyTime,
                  activeColor: TColor.primary,
                  onChanged: (newVal) {
                    isAnyTime = newVal;
                  },
                ),
              ],
            ),
            SizedBox(height: 15),
            RoundIconButton(
              assetimage: "assets/img/add.png",
              widthSpace: 16,
              iconwidth: 20,
              text: "Add Card",
              fontSize: 18,
              fontWeight: FontWeight.w700,
              buttoncolor: TColor.primary,
              onPressed: () {},
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
