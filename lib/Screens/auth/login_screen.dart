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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Padding(padding: EdgeInsetsGeometry.fromLTRB(20, 24, 20, 24),
       child: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
          Image(image: AssetImage("assets/images/drivo-mark-logo.png")),
             Spacing.h20,
             Text("Welcome back",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
             Spacing.h8,
             Text("Log in to manage your booking and trips",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15
             ),),
            Spacing.h16,
           Card(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text("Email address"),
                 CustomTextField(
                     keyboardType: TextInputType.emailAddress,
                     controller: userEmail, assetsIcon: "assets/icons/mail.svg")
               ],
             ),
           )
           ],
         ),
       ),

       ),
    );
  }
}
