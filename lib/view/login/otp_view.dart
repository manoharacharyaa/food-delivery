import 'package:flutter/material.dart';
import 'package:food_delivery/common/colors.dart';
import 'package:food_delivery/view/login/new_password_view.dart';
import 'package:food_delivery/widget/round_button.dart';
import 'package:otp_pin_field/otp_pin_field.dart';
import '../../widget/round_textfield.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _LoginViewState();
}

class _LoginViewState extends State<OtpView> {
  final _otpPinFieldController = GlobalKey<OtpPinFieldState>();

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
                "We have sent an OTP to your Mobile",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Please check your mobile number 071******12 a\n continue to reset your password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: TColor.secondaryText,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 50),
              SizedBox(
                height: 50,
                child: OtpPinField(
                    key: _otpPinFieldController,
                    autoFillEnable: true,
                    textInputAction: TextInputAction.done,
                    onSubmit: (text) {
                      print('Entered pin is $text');
                    },
                    onChange: (text) {
                      print('Enter on change pin is $text');
                    },
                    onCodeChanged: (code) {
                      print('onCodeChanged  is $code');
                    },
                    otpPinFieldStyle: OtpPinFieldStyle(
                        defaultFieldBorderColor: TColor.secondaryText,
                        activeFieldBorderColor: TColor.primary,
                        defaultFieldBackgroundColor: Colors.white,
                        activeFieldBackgroundColor: Colors.white),
                    maxLength: 4,
                    showCursor: true,
                    cursorColor: Colors.indigo,
                    upperChild: const Column(
                      children: [
                        SizedBox(height: 30),
                        Icon(Icons.flutter_dash_outlined, size: 150),
                        SizedBox(height: 20),
                      ],
                    ),
                    showCustomKeyboard: false,
                    cursorWidth: 3,
                    mainAxisAlignment: MainAxisAlignment.center,
                    otpPinFieldDecoration:
                        OtpPinFieldDecoration.defaultPinBoxDecoration),
              ),
              SizedBox(height: 40),
              RoundButton(
                title: "Next",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NewPasswordView(),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Didn't Recieve?",
                      style: TextStyle(
                        color: TColor.secondaryText,
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      " Click Here",
                      style: TextStyle(
                        color: TColor.primary,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
