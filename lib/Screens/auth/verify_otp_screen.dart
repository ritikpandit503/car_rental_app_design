import 'package:car_rental_app_design/Themes/app_color.dart';
import 'package:car_rental_app_design/Themes/app_padding.dart';
import 'package:car_rental_app_design/Widgets/app_button.dart';
import 'package:car_rental_app_design/Themes/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Center(
            child: Column(
              children: [
                Text(
                  "Verification",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                ),
                Spacing.h24,
                CircleAvatar(
                  backgroundColor: Color(0XFFE6F0FF),
                  radius: 68,
                  child: CircleAvatar(
                    radius: 48,
                    backgroundColor: Color(0xFFE6F0FF),
                    child: SvgPicture.asset(
                      "assets/icons/phone.svg",
                      width: 33,
                      height: 33,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Spacing.h8,
                Text(
                  "Check your phone",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: Color(0XFF0B1B33),
                  ),
                ),
                Spacing.h8,
                Text(
                  "We sent a 4-digit code to \n     +44 7700 900123",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: AppColor.slate,
                  ),
                ),
                Spacer(),
                AppButton(text: "Verify & Continue"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
