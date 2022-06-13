// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travelholic/ui/pages/amount_pages.dart';
import 'package:travelholic/ui/pages/main_page.dart';
import 'package:travelholic/ui/pages/sign_up.dart';
import 'package:travelholic/ui/pages/splash_screen.dart';
import 'package:travelholic/ui/pages/started_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashScreen(),
        '/started-pages': (context) => StartedPages(),
        '/sign-up': (context) => SignUp(),
        '/amount-pages': (context) => AmountPages(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
