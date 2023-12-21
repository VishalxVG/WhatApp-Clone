import 'package:flutter/material.dart';
import 'package:watsapp/Features/landingScreen/auth/screens/loginScreen.dart';
import 'package:watsapp/Features/landingScreen/landingScreen.dart';
import 'package:watsapp/common/utils/colors.dart';
import 'package:watsapp/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WatsApp Clone',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: backgroundColor,
          appBarTheme: const AppBarTheme(
            color: backgroundColor,
          )),
      onGenerateRoute: (settings) => generateRoute(settings),
      debugShowCheckedModeBanner: false,
      home: const LandingScreen(),
    );
  }
}
