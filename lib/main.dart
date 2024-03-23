import 'package:app/screens/login/input_screen.dart';
import 'package:app/screens/login/otp_screen.dart';
import 'package:app/screens/login/phone_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const PhoneScreen(),
        '/login': (context) => const PhoneScreen(),
        '/login/otp': (context) => const OTPScreen(),
        '/login/input': (context) => const InputScreen(),
      }
    );
  }
}
