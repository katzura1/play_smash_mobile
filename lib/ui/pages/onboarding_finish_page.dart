import 'package:flutter/material.dart';
import 'package:play_smash/ui/widgets/buttons.dart';

class OnboardingFinishPage extends StatefulWidget {
  const OnboardingFinishPage({super.key});

  @override
  State<OnboardingFinishPage> createState() => _OnboardingFinishPageState();
}

class _OnboardingFinishPageState extends State<OnboardingFinishPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 133,
              width: 246,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/logo_full.png'),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 22.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WhiteButton(
                      title: "Register",
                      width: 170,
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/register',
                          (route) => false,
                        );
                      },
                    ),
                    PrimaryButton(
                      title: "Login",
                      width: 170,
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/login',
                          (route) => false,
                        );
                      },
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  left: 30.0,
                  right: 30.0,
                  bottom: 55.0,
                ),
                child: WhiteButton(
                  title: "Login with Google",
                  icon: 'logo_google.png',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
