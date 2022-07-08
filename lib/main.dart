import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:school_app/constants/global-constants.dart';
import 'package:school_app/pages/login_screen/login_screen.dart';
import 'package:school_app/pages/splash_screen/splash_screen.dart';
import 'package:school_app/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'School App',
      theme: ThemeData.light().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          primaryColor: kPrimaryColor,
          textTheme: GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme).apply().copyWith(
                bodyText1: TextStyle(
                  color: kTextWhiteColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
                subtitle2: TextStyle(
                  color: kTextWhiteColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
          inputDecorationTheme: InputDecorationTheme(
            labelStyle: TextStyle(
              fontSize: 18,
              color: kTextBlackColor,
              height: 0.5,
            ),
            hintStyle: TextStyle(
              fontSize: 16,
              color: kTextBlackColor,
              height: 0.5,
            ),
            enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
                width: 0.7,
              ),
            ),
            border: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
              ),
            ),
            disabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kTextLightColor,
              ),
            ),
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kPrimaryColor,
                width: 0.7,
              ),
            ),
            errorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2,
              ),
            ),
            focusedErrorBorder: UnderlineInputBorder(
              borderSide: BorderSide(
                color: kErrorBorderColor,
                width: 1.2,
              ),
            ),
          )),
      initialRoute: LoginScreen.routeName,
      //Define o arquivo que contem as rotas (./lib/routes.dart)
      routes: routes,
    );
  }
}
