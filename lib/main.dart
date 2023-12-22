import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:watsapp/Features/landingScreen/auth/screens/loginScreen.dart';
import 'package:watsapp/Features/landingScreen/auth/screens/user_informationScreen.dart';
import 'package:watsapp/Features/landingScreen/landingScreen.dart';
import 'package:watsapp/common/utils/colors.dart';
import 'package:watsapp/firebase_options.dart';
import 'package:watsapp/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
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
      home: const UserInformatioScreen(),
    );
  }
}
