import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:picnic_news_my/screen/main_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'asset/logo.jpg',
      splashIconSize: 150,
      nextScreen: const MainScreen(),
      backgroundColor: const Color(0xff0047ff),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
