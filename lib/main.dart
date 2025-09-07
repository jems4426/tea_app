import 'package:flutter/material.dart';
import 'package:tea_app/login.dart';
import 'package:tea_app/otp.dart';
import 'package:tea_app/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Login(),
      routes: {
        '/otp': (context) => Otp(),
        '/register': (context) => const Register(),
      },
    );
  }
}
