import 'package:apptodolist/auth/auth_page.dart';
import 'package:apptodolist/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:StreamBuilder<User?>(stream:
        FirebaseAuth.instance.authStateChanges(),
            builder: (context,snapshot) {
              if (snapshot.hasData) {
                return Home_Screen();
              }
              else{
                return Auth_Page();
              }
            }
        )
    );
  }
}
