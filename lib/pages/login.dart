import 'package:flutter/material.dart';
import 'package:i_tour/components/my_button.dart';
import 'package:i_tour/components/textfield.dart';

class LoginPage extends StatelessWidget {
  //Sign In Method

  final usernamecontroller = TextEditingController();
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
              padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
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
                      fontSize: 20.0,
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
                            controller: usernamecontroller,
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
                        MyButton(
                          onTap: () {
                            // Assign an anonymous function directly
                            Navigator.pushNamed(context, '/register');
                          },
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Forget Password",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: GestureDetector(
                                onTap: () {
                                  // Navigate to the "/register" route
                                  Navigator.pushNamed(context, '/register');
                                },
                                child: const Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.blue,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        const Text(
                          "Or",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        const Text(
                          "Continue With,",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        )
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
