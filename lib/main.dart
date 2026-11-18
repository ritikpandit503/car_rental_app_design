import 'package:car_rental_app_design/Screens/auth/login_screen.dart';
import 'package:car_rental_app_design/Screens/auth/sign_up_screen.dart';
import 'package:car_rental_app_design/Screens/auth/verify_otp_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),

     //  home: const SignUpScreen(),
     // home: const VerifyOtpScreen(),
    );
  }
}
