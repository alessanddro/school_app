import 'package:flutter/material.dart';

import 'package:school_app/pages/splash_screen/splash_screen.dart';

import 'pages/login_screen/login_screen.dart';

Map<String, WidgetBuilder> routes = {
  //Aqui registra as rotas
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
