import 'package:flutter/material.dart';
import 'package:login_app_firebase/constants/colors.dart';
import 'package:login_app_firebase/constants/dimensions.dart';
import 'package:login_app_firebase/screens/login_page.dart';
import 'package:login_app_firebase/widgets/custom_button.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  static const id = "otp_page_id";
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColours.primaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: Dimensions.h20 * 4,
              ),
              const Icon(
                Icons.arrow_back_ios_new,
                size: 28,
              ),
              const SizedBox(
                height: Dimensions.h20,
              ),
              Image.asset('assets/images/otp_page_image-removebg.png'),
              const SizedBox(
                height: Dimensions.h20,
              ),
              const Text(
                "Verify Your phone number",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: AppColours.activeColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Please enter your OTP code here",
                style: TextStyle(
                  fontSize: 14,
                  color: AppColours.inactiveColor,
                ),
              ),
              const SizedBox(
                height: Dimensions.h20 * 1.5,
              ),
              Pinput(
                defaultPinTheme: PinTheme(
                    margin: EdgeInsets.symmetric(horizontal: 0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColours.activeColor.withOpacity(0.3),
                    ),
                    height: 50,
                    width: 55),
                length: 6,
              ),
              const SizedBox(
                height: Dimensions.h20 * 1.5,
              ),
              Center(
                child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, LoginPage.id),
                    child: CustomButton(textData: "SUBMIT")),
              ),
              const SizedBox(
                height: Dimensions.h20,
              ),
              Center(
                child: Column(
                  children: [
                    const Text(
                      "Did you receive any code?",
                      style: TextStyle(color: AppColours.inactiveColor),
                    ),
                    const SizedBox(
                      height: Dimensions.h20 / 4,
                    ),
                    GestureDetector(
                      child: const Text(
                        "RESEND CODE",
                        style: TextStyle(
                            color: AppColours.componentsColor,
                            fontWeight: FontWeight.bold),
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
