import 'dart:ui';

import 'package:flutter/material.dart';

class VerifyEmailPage extends StatefulWidget {
  const VerifyEmailPage({super.key});

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  TextEditingController emailid = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(
      //     child: Text("Verify Email"),
      //   ),
      // ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/email1.png"
            ),
            fit: BoxFit.cover,
            ),
        ),
        alignment: Alignment.center,
        child: BackdropFilter(filter: ImageFilter.blur(
          sigmaX: 0.0,
          sigmaY: 0.0,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Text(
                    "Verification email id",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Enter your email",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: TextFormField(
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please fill this Field";
                                }
                              },
                              controller: emailid,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: "Enter your email",
                                  labelStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.email_rounded,
                                    color: Colors.white,
                                  ),
                                  hintText: "Email Id",
                                  hintStyle: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  ),
                                  
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        ElevatedButton(
                          onPressed: (){},
                           child: const Text(
                            "Send OTP"

                           ),
                           ),
                           const SizedBox(
                            height: 100,
                           )
                ],
              ),
              ),
          ),
        ),
        ),
      ),
    );
  }
}
