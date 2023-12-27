import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:i_tour/components/image_button.dart';
import 'package:i_tour/components/my_button.dart';
import 'package:i_tour/components/textfield.dart';

class LoginPage extends StatelessWidget {
  //Sign In Method
  //Sign In method
  void userSignIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailcontroller.text, password: passwordcontroller.text);
  }

  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 118, 193, 247),
              Color(0xFF3DB2FF),
              Color.fromARGB(255, 30, 110, 248),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Welcome Back,",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70.0),
                    topRight: Radius.circular(70.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black, // Shadow color
                      offset: Offset(0, 4), // Offset from container
                      blurRadius: 20.0, // Blur intensity
                      spreadRadius: 5.0, // Spread of shadow
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 10.0,
                        ),
                        MyTextField(
                            controller: emailcontroller,
                            hintText: "Username",
                            obsecureText: false),
                        const SizedBox(height: 30.0),
                        MyTextField(
                            controller: passwordcontroller,
                            hintText: "Password",
                            obsecureText: true),
                        const SizedBox(
                          height: 20.0,
                        ),

                        //Sign In Button
                        MyButton(
                          onTap: () {
                            //Logics to Login
                            userSignIn();
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Row(
                          children: [
                            Expanded(
                              child: Divider(
                                color: Color(0xFF3DB2FF),
                                thickness: 0.8,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Or Continue with",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            //Google
                            MyImageButton(
                              imagePath: "lib/assets/google.png",
                            ),
                            SizedBox(
                              width: 30.0,
                            ),
                            //Apple
                            MyImageButton(imagePath: "lib/assets/apple.png")
                          ],
                        ),
                        const Divider(
                          color: Color(0xFF3DB2FF),
                          thickness: 0.8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Note a Member?",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.black,
                              ),
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  debugPrint("Tapped on Login");
                                  // Navigate to the "/register" route
                                  Navigator.pushNamed(context, '/register');
                                },
                                child: const Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
