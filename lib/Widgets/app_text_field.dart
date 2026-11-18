import 'package:car_rental_app_design/Themes/app_color.dart';
import 'package:car_rental_app_design/Themes/app_font_weight.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppTextField extends StatefulWidget {
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String assetsIcon;
  final String hintText;
  final bool isPassword;
  final String labelText;

  const AppTextField({
    super.key,
    required this.keyboardType,
    required this.controller,
    required this.assetsIcon,
    this.isPassword = false,
    required this.hintText,
    required this.labelText,
  });

  @override
  State<AppTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<AppTextField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText.toUpperCase(),style: TextStyle(
          fontWeight: AppFontWeight.semiBold,
          fontSize: 12,
          color: AppColor.slate,
        ),),
        SizedBox(height: 8),
        TextField(
          obscureText: widget.isPassword,
          controller: widget.controller,
          keyboardType: widget.keyboardType,
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontWeight: AppFontWeight.medium,
              fontSize: 15,
              color: AppColor.midnightInk,
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.blue, width: 2),
            ),
            prefixIcon: Padding(
              padding: EdgeInsets.all(12),
              child: SvgPicture.asset(widget.assetsIcon),
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: Icon(
                      isObscure
                          ? Icons.visibility_off_outlined
                          : Icons.visibility_outlined,
                      color: Colors.grey,
                    ),
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
