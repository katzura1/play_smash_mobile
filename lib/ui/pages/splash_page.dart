import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:play_smash/shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushNamedAndRemoveUntil(
          context,
          '/onboarding',
          (route) => false,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Animate(
              effects: const [
                FadeEffect(
                  delay: Duration(
                    milliseconds: 500,
                  ),
                  duration: Duration(
                    milliseconds: 500,
                  ),
                ),
                ScaleEffect(
                  delay: Duration(
                    milliseconds: 500,
                  ),
                  duration: Duration(
                    milliseconds: 500,
                  ),
                ),
              ],
              child: Container(
                height: 93,
                width: 195,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo_above.png'),
                  ),
                ),
              ),
            ),
            Animate(
              effects: const [
                FadeEffect(
                  delay: Duration(
                    milliseconds: 1000,
                  ),
                  duration: Duration(
                    milliseconds: 500,
                  ),
                ),
                ScaleEffect(
                  delay: Duration(
                    milliseconds: 1000,
                  ),
                  duration: Duration(
                    milliseconds: 500,
                  ),
                ),
              ],
              child: Container(
                height: 52,
                width: 246,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo_below.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
