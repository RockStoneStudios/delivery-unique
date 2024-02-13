import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/bottom_navigation.dart';
import 'package:food_app/pages/forgot_password.dart';

import 'package:food_app/pages/signup.dart';
import 'package:food_app/widgets/widget_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = "", password = "";

  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  userLogin() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          backgroundColor: Colors.brown[800],
          content: const Text(
            'Login Succesful',
            style: TextStyle(fontSize: 20.0),
          )));

      // ignore: use_build_context_synchronously
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const BottomNav()));
    } on FirebaseAuthException catch (e) {
      if (e.code == "user-not-found") {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.brown[800],
            content: const Text(
              "User not found by this email",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            )));
      } else if (e.code == 'wrong-password') {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            backgroundColor: Colors.brown[800],
            content: const Text(
              "Wrong Password Provided by User",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            )));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            child: Stack(children: [
          Container(
            height: size.height / 2.5,
            width: size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                  Color.fromARGB(255, 145, 36, 43),
                  Color.fromARGB(255, 133, 54, 30)
                ])),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height / 3),
            width: size.width,
            height: size.height,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Text(''),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    "assets/images/logo.png",
                    width: size.width,
                    height: size.height * 0.4,
                  ),
                ),
                Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    width: size.width,
                    height: size.height / 2.4,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Text(
                            "Login",
                            style: AppWidget.semiBoldTextFeildStyle(),
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please input email';
                              }
                              return null;
                            },
                            controller: emailcontroller,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.email_outlined),
                              hintText: 'Email',
                              hintStyle: AppWidget.semiBoldTextFeildStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            controller: passwordcontroller,
                            validator: (value) {
                              if (value == null || value.length < 6) {
                                return 'wrong password';
                              }
                              return null;
                            },
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.password),
                              hintText: 'Password',
                              hintStyle: AppWidget.semiBoldTextFeildStyle(),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPassword()));
                            },
                            child: Container(
                              alignment: Alignment.topRight,
                              child: Text(
                                "Forgot Password",
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 40.0,
                          ),
                          GestureDetector(
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                setState(() {
                                  email = emailcontroller.text;
                                  password = passwordcontroller.text;
                                });
                              }
                              userLogin();
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 50.0, vertical: 5),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  color:
                                      const Color.fromARGB(255, 173, 43, 60)),
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                    fontFamily: 'Poppins'),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUp()));
                  },
                  child: Text(
                    "Don't have an account? Sign up",
                    style: AppWidget.semiBoldTextFeildStyle(),
                  ),
                )
              ],
            ),
          )
        ])),
      ),
    );
  }
}
