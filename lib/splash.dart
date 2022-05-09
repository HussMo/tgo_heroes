import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/login_screen.dart';

class Splash_screen extends StatelessWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Center(
        child: Column(
          children: [
            Image.asset('images/Logo.png'),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black87,
      nextScreen: Loign_page(),
      splashIconSize: 300,
    );
  }
}
