import 'package:car_rental_app_design/Themes/app_color.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;

  const AppButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(right: 20,left: 20),
        minimumSize: Size(322, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
       backgroundColor: AppColor.driveBlue,
        foregroundColor: Color(0XFFFFFFFF),
      ),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
      ),
    );
  }
}
