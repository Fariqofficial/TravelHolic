// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelholic/cubit/auth_cubit.dart';
import 'package:travelholic/cubit/cubit_cubit.dart';
import 'package:travelholic/ui/pages/amount_pages.dart';
import 'package:travelholic/ui/pages/main_page.dart';
import 'package:travelholic/ui/pages/sign_up.dart';
import 'package:travelholic/ui/pages/splash_screen.dart';
import 'package:travelholic/ui/pages/started_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CubitCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashScreen(),
          '/started-pages': (context) => StartedPages(),
          '/sign-up': (context) => SignUp(),
          '/amount-pages': (context) => AmountPages(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
