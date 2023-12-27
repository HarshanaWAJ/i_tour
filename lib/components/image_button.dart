import 'package:flutter/material.dart';

class MyImageButton extends StatelessWidget {
  final String imagePath;
  const MyImageButton({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF3DB2FF)),
        borderRadius: BorderRadius.circular(20.0),
        color: Color.fromARGB(40, 0, 195, 255),
      ),
      height: 80.0,
      child: Image.asset(imagePath),
    );
  }
}
