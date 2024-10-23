import 'package:flutter/material.dart';
import 'package:play_smash/shared/theme.dart';
import 'package:play_smash/ui/widgets/buttons.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 116,
              ),
              child: Text(
                "Fast & Easy!",
                textAlign: TextAlign.center,
                style: primaryTextStyle.copyWith(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
              ),
              child: Text(
                "Book anytime, anywhere. Ensure the court is always available for a fun and exciting game.",
                textAlign: TextAlign.center,
                style: primaryTextStyle.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 95,
              ),
              child: Container(
                height: 310,
                width: 333,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/onboarding.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30),
        child: PrimaryButton(
          title: "Get Started",
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/onboarding-finish',
              (route) => false,
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
