import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextField extends StatefulWidget {
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String assetsIcon;
  final bool isPassword;

  const CustomTextField({
    super.key,
    required this.keyboardType,
    required this.controller,
    required this.assetsIcon,
    this.isPassword = false,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        enabledBorder: OutlineInputBorder(
           borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: Colors.grey.shade300,width: 1),
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
    );
  }
}
