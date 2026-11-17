import 'package:car_rental_app_design/Themes/app_color.dart';
import 'package:car_rental_app_design/Widgets/custom_button.dart';
import 'package:car_rental_app_design/Widgets/custom_text_field.dart';
import 'package:car_rental_app_design/Widgets/spacing.dart';
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
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 24),
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
                    fontWeight: FontWeight.w400,
                    color: AppColor.slate,
                  ),
                ),
                Spacing.h10,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "FULL NAME",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: AppColor.slate,
                    ),
                  ),
                ),
                Spacing.h8,
                CustomTextField(
                  keyboardType: TextInputType.text,
                  controller: userName,
                  assetsIcon: "assets/icons/user.svg",
                  hintText: "Kaushal Oza",
                ),
                Spacing.h8,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "EMAIL ADDRESS",
                    style: TextStyle(
                      color: AppColor.slate,
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                    ),
                  ),
                ),
                Spacing.h8,
                CustomTextField(
                  keyboardType: TextInputType.emailAddress,
                  controller: userEmail,
                  assetsIcon: "assets/icons/mail.svg",
                  hintText: "kaushal@drivo.app",
                ),
                Spacing.h8,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "PHONE NUMBER",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 11,
                      color: AppColor.slate,
                    ),
                  ),
                ),
                Spacing.h8,
                CustomTextField(
                  keyboardType: TextInputType.phone,
                  controller: userNumber,
                  assetsIcon: "assets/icons/phone.svg",
                  hintText: "+44 7700 900123",
                ),
                Spacing.h8,
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "PASSWORD",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: AppColor.slate,
                    ),
                  ),
                ),
                Spacing.h8,
                CustomTextField(
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
                CustomButton(text: "Create Account"),
                Spacing.h30,
                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Already have an account?",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600
                  ),),
                  TextButton(onPressed: () {

                  }, child: Text("Log in",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                  ),))
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
