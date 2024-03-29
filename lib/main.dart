import 'package:flutter/material.dart';
import 'package:picnic_news_my/screen/splash_page/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: false),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: false),
      home: const SplashScreen(),
    );
  }
}
