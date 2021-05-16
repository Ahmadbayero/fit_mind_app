import 'package:fit_mind_app/screens/welcome_screen.dart';
import 'package:fit_mind_app/styles.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitMind',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: primaryButton,
        ),
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}
