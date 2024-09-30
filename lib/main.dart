import 'package:book_flutter/Config/Themes.dart';
import 'package:book_flutter/Pages/WelcomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HIU BOOK',
      theme: lightTheme,
      home: const WelcomePage(),
    );
  }
}
