import 'package:flutter/material.dart';
import 'package:pacotes/pages/main_page.dart';
import 'package:pacotes/pages/splash_screen.dart/splash_screen_delay_page.dart';
import 'package:pacotes/pages/splash_screen.dart/splash_screen_page.dart';



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreenDelayPage(),
    );
  }
}