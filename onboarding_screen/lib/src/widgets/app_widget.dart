import 'package:flutter/material.dart';
import 'package:onboarding_screen/src/modules/home/home_page.dart';
import 'package:onboarding_screen/src/modules/onboarding/onboarding_page.dart';
import 'package:onboarding_screen/src/modules/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OnBoarding Screen Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
