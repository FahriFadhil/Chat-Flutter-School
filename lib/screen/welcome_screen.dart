// ignore_for_file: sized_box_for_whitespace

import 'package:chat_app/main.dart';
import 'package:chat_app/screen/login_screen.dart';
import 'package:chat_app/screen/register_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'WELCOME_SCREEN';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60,
                  ),
                ),
                const Text(
                  'FlashChat',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      color: Colors.orange),
                )
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Material(
                elevation: 5,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, LoginScreen.id);
                  },
                  minWidth: 160,
                  height: 42,
                  child: const Text(
                    'Log In',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Material(
                elevation: 5,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30),
                child: MaterialButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, RegisterScreen.id);
                  },
                  minWidth: 160,
                  height: 42,
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.white),
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
