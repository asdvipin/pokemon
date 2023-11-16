import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:teamd/homepage.dart';
import 'package:teamd/pages/login_page.dart';

class VerifyOtpPage extends StatefulWidget {
  const VerifyOtpPage({super.key});

  @override
  State<VerifyOtpPage> createState() => _VerifyOtpPageState();
}

class _VerifyOtpPageState extends State<VerifyOtpPage> {
  bool invalidotp = false;
  int resendTime = 60;
  late Timer countdownTimer;
  TextEditingController text1 = TextEditingController();
  TextEditingController text2 = TextEditingController();
  TextEditingController text3 = TextEditingController();
  TextEditingController text4 = TextEditingController();

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  startTimer() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        resendTime = resendTime - 1;
      });
      if (resendTime < 1) {
        countdownTimer.cancel();
      }
    });
  }

  stopTimer() {
    if (countdownTimer.isActive) {
      countdownTimer.cancel();
    }
  }

  String strFormatting(n) => n.toString().padLeft(2, "0");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/otp8.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: BackdropFilter(
          filter: ImageFilter.blur(
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
                    "Verification Code",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Text(
                    "Enter the 4 digit verification code received",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      myInputBox(context, text1),
                      myInputBox(context, text2),
                      myInputBox(context, text3),
                      myInputBox(context, text4),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Haven't received OTP yet?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 188, 189, 189),
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(width: 10),
                      resendTime == 0
                          ? InkWell(
                              onTap: () {
                                // Resend otp code
                                invalidotp = false;
                                resendTime = 60;
                                startTimer();
                                //
                              },
                              child: const Text(
                                "resend",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 177, 77, 70),
                                    fontSize: 18),
                              ),
                            )
                          : const SizedBox()
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  resendTime != 0
                      ? Text(
                          "You can resend OTP after ${strFormatting(resendTime)} second(s)",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                          ),
                        )
                      : const SizedBox(
                          height: 20,
                        ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    invalidotp ? "Invalid otp!" : "",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 243, 96, 86),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      //
                      final otp =
                          text1.text + text2.text + text3.text + text4.text;
                      if (otp == "1989") {
                        stopTimer();
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const LoginPage(),
                          ),
                        );
                        // go to welcome
                      } else {
                        setState(() {
                          invalidotp = true;
                        });
                      }
                      //
                    },
                    child: Text(
                      "Verify",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                        maximumSize: const Size.fromHeight(50)),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}

myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
    height: 60,
    width: 60,
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 132, 131, 131),
      border: Border.all(width: 0.5),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: TextField(
      controller: controller,
      maxLength: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 40,
      ),
      decoration: const InputDecoration(
        counterText: "",
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}
