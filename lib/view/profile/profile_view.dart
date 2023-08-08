import 'dart:io';
import 'package:flutter/material.dart';
import 'package:food_delivery/widget/round_button.dart';
import 'package:food_delivery/widget/round_text_title.dart';
import 'package:image_picker/image_picker.dart';

import '../../common/colors.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({super.key});

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  final ImagePicker picker = ImagePicker();
  XFile? image;
  TextEditingController txtName = TextEditingController();
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtMobile = TextEditingController();
  TextEditingController txtAddress = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtConfirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Profile",
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
                SizedBox(height: 20),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: TColor.placeholder,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  alignment: Alignment.center,
                  child: image != null
                      ? ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.file(
                            File(image!.path),
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        )
                      : Icon(
                          Icons.person,
                          size: 65,
                          color: TColor.secondaryText,
                        ),
                ),
                TextButton.icon(
                  onPressed: () async {
                    image = await picker.pickImage(source: ImageSource.gallery);
                  },
                  icon: Icon(
                    Icons.edit,
                    color: TColor.primary,
                    size: 15,
                  ),
                  label: Text(
                    "Edit Profile",
                    style: TextStyle(
                      color: TColor.primary,
                      fontSize: 15,
                    ),
                  ),
                ),
                Text(
                  "Hi there Manohar!",
                  style: TextStyle(
                    color: TColor.primaryText,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                      color: TColor.secondaryText,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RoundTextTitle(
                    hintText: "Enter Name",
                    title: "Name",
                    controller: txtName,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RoundTextTitle(
                    hintText: "Enter Email",
                    title: "Email",
                    controller: txtEmail,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RoundTextTitle(
                    hintText: "Enter Mobile No",
                    title: "Mobile No",
                    controller: txtMobile,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RoundTextTitle(
                    hintText: "Enter Address",
                    title: "Address",
                    controller: txtAddress,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RoundTextTitle(
                    hintText: "* * * * * * *",
                    title: "Password",
                    controller: txtPassword,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: RoundTextTitle(
                    hintText: "* * * * * * *",
                    title: "Confirm Password",
                    controller: txtConfirmPassword,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: RoundButton(title: "Save", onPressed: () {}),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
