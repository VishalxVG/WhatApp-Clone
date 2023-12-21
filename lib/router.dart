import 'package:flutter/material.dart';
import 'package:watsapp/Features/landingScreen/auth/screens/OTPScree.dart';
import 'package:watsapp/Features/landingScreen/auth/screens/loginScreen.dart';
import 'package:watsapp/Features/landingScreen/auth/screens/user_informationScreen.dart';
import 'package:watsapp/common/widgets/error.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScrren.routeName:
      return MaterialPageRoute(
        builder: ((context) => const LoginScrren()),
      );
    case OTPScreen.routeName:
      final verifivationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: ((context) => OTPScreen(
              verificationId: verifivationId,
            )),
      );
    case UserInformatioScreen.routeName:
      return MaterialPageRoute(
        builder: ((context) => const UserInformatioScreen()),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: "This page doesnot exist"),
        ),
      );
  }
}
