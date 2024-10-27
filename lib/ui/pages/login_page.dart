import 'package:flutter/material.dart';
import 'package:play_smash/shared/functions.dart';
import 'package:play_smash/shared/theme.dart';
import 'package:play_smash/ui/widgets/buttons.dart';
import 'package:play_smash/ui/widgets/forms.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController(text: "");
  final TextEditingController passwordController = TextEditingController(text: "");

  bool isValidEmail = false;
  bool isValidPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 90,
              bottom: 20,
            ),
            child: Center(
              child: Text(
                "Login",
                style: primaryTextStyle.copyWith(
                  fontSize: 35,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
          CustomInputText(
            title: "Email",
            hintText: "Enter your email",
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            isValid: isValidEmail,
            onChanged: (text) {
              setState(() {
                isValidEmail = validateEmail(text);
              });
            },
          ),
          CustomInputText(
            title: "Password",
            hintText: "Enter your password",
            isValid: isValidPassword,
            controller: passwordController,
            textInputAction: TextInputAction.done,
            onChanged: (text) {
              setState(() {
                isValidPassword = validatePassword(text);
              });
            },
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 30,
            ),
            child: PrimaryButton(
              title: "Login",
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/register', (route) => false);
                  },
                  child: const Text(
                    "Register",
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamedAndRemoveUntil(context, '/reset-password', (route) => false);
                  },
                  child: const Text(
                    "Reset Password",
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Center(
              child: Text(
                "or login with",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 20,
            ),
            child: WhiteButton(
              title: "Login with Google",
              icon: 'logo_google.png',
            ),
          ),
        ],
      ),
    );
  }
}
