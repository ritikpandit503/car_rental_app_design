import 'package:car_rental_app_design/Themes/app_color.dart';
import 'package:car_rental_app_design/Themes/app_font_weight.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  final String text;
  const AppTextButton({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: () {

    }, child: Text(
      text,style: TextStyle(
      fontWeight: AppFontWeight.semiBold,
      fontSize: 14,
      color:AppColor.driveBlue,
    ),));
  }
}
