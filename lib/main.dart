import 'package:flutter/material.dart';

//Pages
import 'package:i_tour/pages/landing.dart';
import 'package:i_tour/pages/login.dart';
import 'package:i_tour/pages/register.dart';

//Firebase
import 'package:firebase_core/firebase_core.dart';
import 'package:i_tour/pages/user_auth.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/auth': (context) => UserAuth(),
        '/login': (context) => LoginPage(),
        '/register': (context) => const RegisterPage(),
      },
    );
  }
}
