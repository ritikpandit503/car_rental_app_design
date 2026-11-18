import 'package:car_rental_app_design/Themes/app_color.dart';
import 'package:car_rental_app_design/Themes/app_font_weight.dart';
import 'package:car_rental_app_design/Themes/app_padding.dart';
import 'package:car_rental_app_design/Widgets/app_button.dart';
import 'package:car_rental_app_design/Widgets/app_text_button.dart';
import 'package:car_rental_app_design/Widgets/app_text_field.dart';
import 'package:car_rental_app_design/Themes/app_spacing.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController userEmail = TextEditingController();
  final TextEditingController userPassword = TextEditingController();
  final TextEditingController userNumber = TextEditingController();
  bool isAgree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Create your account",
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                ),
                Text(
                  "Join Drivo and start renting in minutes.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: AppFontWeight.regular,
                    color: AppColor.slate,
                  ),
                ),
                Spacing.h10,
                AppTextField(
                  labelText: "FULL NAME",
                  keyboardType: TextInputType.text,
                  controller: userName,
                  assetsIcon: "assets/icons/user.svg",
                  hintText: "Kaushal Oza",
                ),
                Spacing.h8,
                AppTextField(
                  labelText: "EMAIL ADDRESS",
                  keyboardType: TextInputType.emailAddress,
                  controller: userEmail,
                  assetsIcon: "assets/icons/mail.svg",
                  hintText: "kaushal@drivo.app",
                ),
                Spacing.h8,

                AppTextField(
                  labelText: "PHONE NUMBER",
                  keyboardType: TextInputType.phone,
                  controller: userNumber,
                  assetsIcon: "assets/icons/phone.svg",
                  hintText: "+44 7700 900123",
                ),
                Spacing.h8,

                AppTextField(
                  labelText: "PASSWORD",
                  keyboardType: TextInputType.text,
                  controller: userPassword,
                  assetsIcon: "assets/icons/lock.svg",
                  isPassword: true,
                  hintText: "Create a strong password",
                ),
                Spacing.h10,
                Row(
                  children: [
                    Checkbox(
                      value: isAgree,
                      onChanged: (value) {
                        setState(() {
                          isAgree = value!;
                        });
                      },
                    ),
                    Text(
                      "I agree to the Term & Privacy Policy",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: AppColor.slate,
                      ),
                    ),
                  ],
                ),
                Spacing.h10,
                AppButton(text: "Create Account"),
                Spacing.h30,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                     AppTextButton(text: "Log in")
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
