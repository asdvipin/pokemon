import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:teamd/homepage.dart';
import 'package:teamd/pages/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController username = TextEditingController();
  final TextEditingController passworde = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/pokemon1.png",
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
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 60,
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
                              controller: username,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  labelText: "UserName",
                                  labelStyle: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                  ),
                                  prefixIcon: const Icon(
                                    Icons.email_rounded,
                                    color: Colors.white,
                                  ),
                                  hintText: "Username",
                                  hintStyle: const TextStyle(
                                    color: Colors.white,
                                  )),
                            ),
                          ),
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
                              controller: passworde,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                labelText: "Password",
                                labelStyle: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                                prefixIcon: const Icon(
                                  Icons.password_rounded,
                                  color: Colors.white,
                                ),
                                hintText: "Password",
                                hintStyle: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: Column(
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "Forgot Your Password?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const HomePage();
                                  },
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 121, 117, 117),
                            ),
                            child: const Text("login")),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) {
                                          return const SignupPage();
                                        },
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Dont have an account? Sign Up",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 181, 179, 179),
                                      fontSize: 16,
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
