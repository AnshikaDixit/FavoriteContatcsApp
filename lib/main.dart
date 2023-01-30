import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_state_management/screens/dashboard.dart';
import 'package:getx_state_management/screens/contacts_screen.dart';
import 'package:getx_state_management/screens/login_screen.dart';
import 'package:getx_state_management/utils/languages.dart';

import 'screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      fallbackLocale: const Locale('en','US' ),
      locale: const Locale('en','US' ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      translations: Languages(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const OnboardingScreen(),
      getPages: [
        GetPage(name: '/', page: () => const OnboardingScreen()),
        GetPage(name: '/contactscreen', page: () => const ContactsScreen()),
        GetPage(name: '/dashboard', page: () => const Dashboard()),
        GetPage(name: '/loginscreen', page: () => const LoginScreen()),
      ],
    );
  }
}

