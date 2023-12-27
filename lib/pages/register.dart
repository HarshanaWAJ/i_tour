import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF3DB2FF),
      child: const Center(
        child: Text(
          "Registration",
          style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}
