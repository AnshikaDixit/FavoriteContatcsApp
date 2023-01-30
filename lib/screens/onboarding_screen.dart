import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/screens/login_screen.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         //crossAxisAlignment: CrossAxisAlignment.center,
          children:  [
            Center(
              child: GestureDetector(
                onTap: (() =>
                Get.to(const LoginScreen())
                // Get.toNamed('/loginscreen') 
                 ),
                child:  Image(
                  image: 
                  const AssetImage(
                    'logo/contact_book_logo.webp', 
                  ),
                  height: Get.height * 0.4,
                  width: Get.width * 0.4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}