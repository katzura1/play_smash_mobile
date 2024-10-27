import 'package:flutter/material.dart';
import 'package:play_smash/shared/functions.dart';
import 'package:play_smash/shared/theme.dart';
import 'package:play_smash/ui/widgets/buttons.dart';
import 'package:play_smash/ui/widgets/forms.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  TextEditingController emailController = TextEditingController(text: "");

  bool isValidEmail = false;

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
                "Forget Password",
                style: primaryTextStyle.copyWith(
                  fontSize: 35,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              "Don’t worry! enter your email and we will send 4-digit code to your email.h",
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomInputText(
            title: "Email",
            hintText: "Enter your email",
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            isValid: isValidEmail,
            onChanged: (text) {
              setState(() {
                isValidEmail = validateEmail(text);
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamedAndRemoveUntil(context, '/login', (route) => false);
              },
              child: const Text(
                "Login",
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30.0),
        child: PrimaryButton(
          title: "Send Code",
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/verify-account',
              (route) => false,
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
