import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:i_tour/pages/profile.dart';
import 'package:i_tour/pages/login.dart'; // Assuming you have a login page

class UserAuth extends StatelessWidget {
  const UserAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                  child: Text("Authentication Error")); // Handle errors
            }

            if (snapshot.hasData) {
              return const MyProfile(); // Show profile if user is authenticated
            } else {
              return LoginPage(); // Show login page if not authenticated
            }
          },
        ),
      ),
    );
  }
}
