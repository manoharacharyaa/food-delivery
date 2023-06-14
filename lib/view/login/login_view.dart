import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/view/login/reset_password_view.dart';
import 'package:food_delivery/view/login/signup_view.dart';
import 'package:food_delivery/view/on_boarding/on_boarding.dart';
import 'package:food_delivery/widget/round_button.dart';
import 'package:food_delivery/widget/round_lcon_button.dart';
import '../../widget/round_textfield.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController txtEmail = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 64),
              Text(
                "Login",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Add your details to login",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 25),
              RoundTextfield(
                hintText: "Your Email",
                controller: txtEmail,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 25),
              RoundTextfield(
                hintText: "Password",
                controller: txtPassword,
                keyboardType: TextInputType.visiblePassword,
              ),
              SizedBox(height: 25),
              RoundButton(
                title: "Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OnBoardingView()),
                  );
                },
              ),
              SizedBox(height: 5),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ResetPasswordView(),
                    ),
                  );
                },
                child: Text(
                  "Forgot your password",
                  style: TextStyle(
                    color: TColor.secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Text(
                "or Login With",
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 30),
              RoundIconButton(
                assetimage: "assets/img/facebook_logo.png",
                iconwidth: 10,
                text: "Login with Facebook",
                buttoncolor: Color(0XFF367FC0),
                onPressed: () {},
              ),
              SizedBox(height: 30),
              RoundIconButton(
                assetimage: "assets/img/google_logo.png",
                iconwidth: 25,
                text: "Login with Facebook",
                buttoncolor: Color(0XFFDD4839),
                onPressed: () {},
              ),
              SizedBox(height: 80),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpView()),
                  );
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Don't have an account?",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " Sign Up",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
