import 'package:flutter/material.dart';
import 'package:play_smash/shared/theme.dart';
import 'package:play_smash/ui/pages/login_page.dart';
import 'package:play_smash/ui/pages/onboarding_finish_page.dart';
import 'package:play_smash/ui/pages/onboarding_page.dart';
import 'package:play_smash/ui/pages/register_page.dart';
import 'package:play_smash/ui/pages/reset_password_page.dart';
import 'package:play_smash/ui/pages/splash_page.dart';
import 'package:play_smash/ui/pages/verify_account_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Play Smash',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
        appBarTheme: AppBarTheme(
          backgroundColor: backgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: blackColor),
          titleTextStyle: whiteTextStyle.copyWith(
            fontSize: 20,
            fontWeight: semiBold,
          ),
        ),
      ),
      // home: const SplashPage(),
      routes: {
        '/': (context) => const SplashPage(),
        '/onboarding': (context) => const OnboardingPage(),
        '/onboarding-finish': (context) => const OnboardingFinishPage(),
        '/register': (context) => const RegisterPage(),
        '/login': (context) => const LoginPage(),
        '/reset-password': (context) => const ResetPasswordPage(),
        '/verify-account': (context) => const VerifyAccountPage()
      },
    );
  }
}
