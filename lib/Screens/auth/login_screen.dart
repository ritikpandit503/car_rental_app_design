import 'package:car_rental_app_design/Themes/app_color.dart';
import 'package:car_rental_app_design/Themes/app_font_weight.dart';
import 'package:car_rental_app_design/Themes/app_padding.dart';
import 'package:car_rental_app_design/Widgets/app_button.dart';
import 'package:car_rental_app_design/Widgets/app_text_button.dart';
import 'package:car_rental_app_design/Widgets/app_text_field.dart';
import 'package:car_rental_app_design/Themes/app_spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController userEmail = TextEditingController();
  final TextEditingController userPassword = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Padding(
          padding: AppPadding.screenPadding,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _appLogo(),
                _appHeader(),
                Spacing.h8,
                _appSubTitle(),
                Spacing.h16,
                _loginCard(),
                 Spacing.h12,
                _orDivider(),
                Spacing.h12,
                 _filledButton(),

                Spacer(),
                _bottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _loginCard() {
    return Card(
      color: Color(0XFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppTextField(
              labelText: "EMAIL ADDRESS",
              keyboardType: TextInputType.emailAddress,
              controller: userEmail,
              assetsIcon: "assets/icons/mail.svg",
              isPassword: false,
              hintText: "Kaushal@drivo.com",
            ),
            Spacing.h10,
            AppTextField(
              labelText: "PASSWORD",
              keyboardType: TextInputType.text,
              controller: userPassword,
              assetsIcon: "assets/icons/lock.svg",
              isPassword: true,
              hintText: "Enter Password",
            ),
            Spacing.h8,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  focusColor: AppColor.driveBlue,
                  value: rememberMe,
                  onChanged: (value) {
                    setState(() {
                      rememberMe = value!;
                    });
                  },
                ),
                Text("Remember me"),
                Spacer(),
                AppTextButton(text: "Forgot Password?"),
              ],
            ),
            Spacing.h8,
            AppButton(text: "Log in"),
          ],
        ),
      ),
    );
  }
  Widget _appLogo() {
    return SvgPicture.asset("assets/images/drivo-mark.svg");
  }
  Widget _appHeader() {
    return Text(
      "Welcome back",
      style: TextStyle(fontWeight: AppFontWeight.bold, fontSize: 30),
    );
  }
  Widget _appSubTitle() {
    return Text(
      "Log in to manage your booking and trips",
      style: TextStyle(fontWeight: AppFontWeight.regular, fontSize: 15),
    );
  }
  Widget _orDivider(){
    return Row(
      children: [
       Expanded(child: Divider(),
       ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),

        child:Text("or continue with",style: TextStyle(
          fontSize: 13,
          fontWeight: AppFontWeight.regular,
          color: AppColor.slate,
        ),),
        ),

        Expanded(child: Divider(),
        ),

      ],
    );
  }
  Widget _bottom(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        AppTextButton(text: "Sign up"),
      ],
    );
  }
  Widget _filledButton(){
    return  Expanded(
      child: Row(
        children: [
          FilledButton(
            style: FilledButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: AppColor.midnightInk,
                side: BorderSide(color: Colors.grey.shade300),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                minimumSize: Size(175, 56)

            ),
            onPressed: () {

            }, child: Row(
            children: [
              SvgPicture.asset("assets/icons/globe.svg"),
              Spacing.w8,
              SvgPicture.asset("assets/images/Google.svg"),
            ],
          ),
          ),
          Spacing.w8,
          Expanded(
            child: FilledButton(
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: AppColor.midnightInk,
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    minimumSize: Size(175, 56)
                ),
                onPressed: () {

                }, child: Row(

              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset("assets/icons/apple.svg"),
                Spacing.w8,
                SvgPicture.asset("assets/images/Apple.svg")
              ],
            )),
          ),
        ],
      ),
    );
  }
}
