import 'package:flutter/material.dart';
import 'package:watsapp/Features/landingScreen/auth/screens/loginScreen.dart';
import 'package:watsapp/common/widgets/error.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScrren.routeName:
      return MaterialPageRoute(
        builder: ((context) => const LoginScrren()),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: "This page doesnot exist"),
        ),
      );
  }
}
