import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:teamd/pages/login_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();
  final TextEditingController emailid = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/pokemon1.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        alignment: Alignment.center,
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.1, sigmaY: 1.1),
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 60,
                    ),
                    Text(
                      "SignUp",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 248, 246, 246),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: username,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "UserName",
                              labelStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              hintText: "User name",
                              hintStyle: TextStyle(
                                color: Color.fromARGB(255, 248, 245, 245),
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: phonenumber,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Phone Number",
                              labelStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              prefixIcon: Icon(
                                Icons.phone_android,
                                color: Colors.white,
                              ),
                              hintText: "Phone Number",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: emailid,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Email Id",
                              labelStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              prefixIcon: Icon(
                                Icons.email_rounded,
                                color: Colors.white,
                              ),
                              hintText: "Email Id",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: password,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              prefixIcon: Icon(
                                Icons.lock_clock_rounded,
                                color: Colors.white,
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Container(
                        height: 55,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          controller: confirmpassword,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              labelText: "Confirm Password",
                              labelStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                              prefixIcon: Icon(
                                Icons.lock_open_rounded,
                                color: Colors.white,
                              ),
                              hintText: "Confirm Password",
                              hintStyle: TextStyle(
                                color: Colors.white,
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return LoginPage();
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 121, 117, 117),
                        ),
                        child: Text(
                          "signup",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ))
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
