import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/view/login/login_view.dart';
import 'package:food_delivery/view/login/signup_view.dart';
import '../../widget/round_button.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  "assets/img/welcome_top_shape.png",
                  width: media.width,
                ),
                Image.asset(
                  "assets/img/app_logo.png",
                  alignment: Alignment.bottomCenter,
                  width: media.width * 0.55,
                  height: media.height * 0.55,
                  fit: BoxFit.contain,
                ),
              ],
            ),
            SizedBox(height: media.width * 0.1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                "Discover the best food from over 1000 restaurants and fast delivery\n to your doorstep",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: media.width * 0.1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Login",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
                type: RoundButtonType.bgPrimary,
              ),
            ),
            SizedBox(height: media.width * 0.1),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: RoundButton(
                title: "Create an Account",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUpView(),
                    ),
                  );
                },
                type: RoundButtonType.textPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
