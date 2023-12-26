import 'package:flutter/material.dart';
import 'package:i_tour/pages/landing.dart';
import 'package:i_tour/pages/login.dart';
import 'package:i_tour/pages/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Tour',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LandingPage(title: 'I Tour App'),
      routes: <String, WidgetBuilder>{
        '/login': (context) => LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
