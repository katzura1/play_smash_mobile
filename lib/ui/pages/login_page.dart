import 'package:flutter/material.dart';
import 'package:play_smash/ui/widgets/buttons.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: PrimaryButton(
          title: "Register",
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(context, '/register', (route) => false);
          },
        ),
      ),
    );
  }
}
