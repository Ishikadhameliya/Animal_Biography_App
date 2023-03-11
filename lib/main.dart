import 'package:animal_biography_app/views/screens/details_page.dart';
import 'package:animal_biography_app/views/screens/homepage.dart';
import 'package:animal_biography_app/views/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "splash_screen",
      routes: {
        "/": (context) => const HomePage(),
        "splash_screen": (context) => const IntroScreen(),
        "detail_page": (context) => const Details_Page(),
      },
    ),
  );
}
