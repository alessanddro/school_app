import 'package:flutter/material.dart';

//Colors
const Color kPrimaryColor = Color(0xFFEE2B0B);
const Color kSecondaryColor = Color(0xFFEE5E4B);
const Color kTextBlackColor = Color(0xFF313131);
const Color kTextWhiteColor = Color(0xFFFFFFFF);
const Color kContainerColor = Color(0xFF77777777);
const Color kOtherColor = Color(0xFFF4F6F7);
const Color kTextLightColor = Color(0xFFA5A5A5);
const Color kErrorBorderColor = Color(0xFFFF0004);

//default Value
const kDefaultPadding = 20.0;

//Validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//validation e-mail
const String emailPattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

//height and width global size
double getWidth(context) {
  return MediaQuery.of(context).size.width;
}

double getHeigth(context) {
  return MediaQuery.of(context).size.height;
}
