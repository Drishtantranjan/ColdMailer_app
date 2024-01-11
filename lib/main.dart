import 'package:cold_mailing/onboarding/presentation/views/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'auth/presentation/views/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home:  Onboarding(),
    );
  }
}


