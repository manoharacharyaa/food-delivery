import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/view/login/otp_view.dart';
import 'package:food_delivery/widget/round_button.dart';
import '../../widget/round_textfield.dart';

class NewPasswordView extends StatefulWidget {
  const NewPasswordView({super.key});

  @override
  State<NewPasswordView> createState() => _LoginViewState();
}

class _LoginViewState extends State<NewPasswordView> {
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 64),
              Text(
                "New Password",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Please enter your new password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 50),
              RoundTextfield(
                hintText: "New Password",
                controller: txtPassword,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              RoundTextfield(
                hintText: "Confirm Password",
                controller: txtPassword,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 30),
              RoundButton(
                title: "Next",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OtpView(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
