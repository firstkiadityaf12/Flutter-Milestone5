import 'package:flutter/material.dart';
import 'package:todolist_app/pages/login.dart';
import 'package:todolist_app/pages/onboarding_controller.dart';
import 'package:provider/provider.dart';
import 'package:todolist_app/pages/register.dart';
import 'package:todolist_app/shared/theme/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {},
        )
      ],
      child: MaterialApp(
        title: 'Flutter To Do List App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          scaffoldBackgroundColor: bgColor,
        ),
        initialRoute: OnBoardingScreen.routeName,
        routes: {
          OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
          LoginPage.routName: (context) => const LoginPage(),
          RegisterPage.routeName: (context) => const RegisterPage(),
        },
      ),
    );
  }
}
