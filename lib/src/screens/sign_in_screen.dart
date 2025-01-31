import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase_ui;

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: firebase_ui.SignInScreen(
        providers: [
          firebase_ui.EmailAuthProvider(),
        ],
      ),
    );
  }
}
