import 'package:car_rental_app_design/Widgets/custom_button.dart';
import 'package:car_rental_app_design/Widgets/custom_text_field.dart';
import 'package:car_rental_app_design/Widgets/spacing.dart';
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(20, 24, 20, 24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage("assets/images/drivo-mark-logo.png")),
              Spacing.h20,
              Text(
                "Welcome back",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              Spacing.h8,
              Text(
                "Log in to manage your booking and trips",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 15),
              ),
              Spacing.h16,
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Email address",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacing.h8,
                      CustomTextField(
                        keyboardType: TextInputType.emailAddress,
                        controller: userEmail,
                        assetsIcon: "assets/icons/mail.svg",
                        isPassword: false,
                        hintText: "Kaushal@drivo.com",
                      ),
                      Spacing.h10,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Spacing.h8,
                      CustomTextField(
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
                          Checkbox(value:rememberMe , onChanged: (value) {
                            setState(() {
                              rememberMe = value!;
                            });
                          },),
                          Text("Remember me"),
                          Spacer(),
                          TextButton(onPressed: () {

                          }, child: Text("Forgot Password?"))
                        ],
                      ),
                      Spacing.h8,
                      CustomButton(text: "Log in")
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
