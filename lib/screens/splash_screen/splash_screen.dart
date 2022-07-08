import 'package:flutter/material.dart';

import 'package:school_app/pages/login_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  //Nome da rota
  static String routeName = 'SplashSCreen';
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(context, LoginScreen.routeName, (route) => false);
    });
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo.jpg", height: 300),
        ],
      ),
    ));
  }
}
