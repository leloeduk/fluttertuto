import 'package:flutter/material.dart';
import 'package:fluttertuto/pages/splash_page.dart';
import 'package:fluttertuto/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: SplashPage(duration: 2, page: WelcomePage()),
    );
  }
}
