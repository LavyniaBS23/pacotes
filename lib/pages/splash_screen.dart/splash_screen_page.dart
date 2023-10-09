import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:pacotes/pages/main_page.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.yellow, Colors.purple],
                stops: [0.3, 0.7]
                /*colors: [Colors.yellow, Colors.purple, Colors.red, Colors.green],
              stops: [0.1, 0.3, 0.5, 0.9]*/
                )),
        child: Center(
            child: SizedBox(
  width: 250.0,
  child: DefaultTextStyle(
    style: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
    ),
    child: AnimatedTextKit(
      totalRepeatCount: 1,
      repeatForever: false,
      onFinished: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (builder) => const MainPage()));
      },
      animatedTexts: [
        FadeAnimatedText('do IT!'),
        FadeAnimatedText('do it RIGHT!!'),
        FadeAnimatedText('do it RIGHT NOW!!!'),
      ],
      onTap: () {
        print("Tap Event");
      },
    ),
  ),
  ),
      )),
    ));
  }
}
