import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;

  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Correctly assign the onTap function
      child: Container(
        width: 200.0,
        padding: const EdgeInsets.all(8.0),
        decoration: const BoxDecoration(
          color: Color(0xFF3DB2FF),
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        child: const Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Log In",
                style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w700),
              ),
              SizedBox(width: 10),
              Icon(
                Icons.login_rounded,
                size: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
