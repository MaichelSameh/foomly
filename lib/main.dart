import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/screens.dart';

void main() {
  runApp(
    MyApp(
      key: LabeledGlobalKey("main_screen"),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: SplashScreen.route_name,
      routes: {
        SplashScreen.route_name: (_) => const SplashScreen(),
        AuthenticationScreen.route_name: (_) => const AuthenticationScreen(),
      },
    );
  }
}
