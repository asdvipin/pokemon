import 'package:flutter/material.dart';
import 'package:teamd/homepage.dart';
import 'package:teamd/otp%20verification/verifyemail_page.dart';
import 'package:teamd/otp%20verification/verifyopt_page.dart';
import 'package:teamd/pages/login_page.dart';
import 'package:teamd/pages/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 4, 65, 186)),
        useMaterial3: true,
      ),
      home: VerifyEmailPage(),
    );
  }
}

