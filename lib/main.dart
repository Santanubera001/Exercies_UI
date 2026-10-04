import 'package:exercies_ui/pages/ManuPage.dart';
import 'package:exercies_ui/pages/intro_page.dart';
import 'package:flutter/material.dart';

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
      home:IntroPage(),
      routes: {
        'intropage': (context) => IntroPage(),
        'manupage': (context) =>Manupage() ,
      },
    );
  }
}
