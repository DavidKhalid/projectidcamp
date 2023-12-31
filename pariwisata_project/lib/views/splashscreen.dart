import 'package:flutter/material.dart';
import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
//import 'package:pariwisata_project/views/homepage.dart';
import 'package:pariwisata_project/views/loginpage.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterSplashScreen.fadeIn(
        backgroundColor: Colors.white,
        onInit: () {
          debugPrint("On Init");
        },
        onEnd: () {
          debugPrint("On End");
        },
        childWidget: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/images/logopariwisata.png",
          ),
        ),
        onAnimationEnd: () => debugPrint("On Fade In End"),
        duration: const Duration(seconds: 5),
        nextScreen: const LoginPage(),
      ),
    );
  }
}
