import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextInputType keyboardType;
  final TextEditingController controller;
  final String  assetsIcon;

  const CustomTextField({super.key,required this.keyboardType,required this.controller,required this.assetsIcon});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        prefixIcon:Padding(padding: EdgeInsetsGeometry.all(12),

        )
      ),

    );
  }
}

