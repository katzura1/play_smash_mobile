import 'package:flutter/material.dart';
import 'package:play_smash/shared/functions.dart';
import 'package:play_smash/shared/theme.dart';
import 'package:play_smash/ui/widgets/buttons.dart';
import 'package:play_smash/ui/widgets/forms.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController phoneController = TextEditingController(text: '');
  final TextEditingController passwordController = TextEditingController(text: '');
  bool isValidEmail = true;
  bool isValidName = true;
  bool isValidPhone = true;
  bool isValidPassword = true;

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
                "Register",
                style: primaryTextStyle.copyWith(
                  fontSize: 35,
                  fontWeight: bold,
                ),
              ),
            ),
          ),
          CustomInputText(
            title: "Email",
            hintText: "Enter your email",
            controller: emailController,
            isValid: isValidEmail,
            onChanged: (text) {
              setState(() {
                isValidEmail = validateEmail(text);
              });
            },
          ),
          CustomInputText(
            title: "Name",
            hintText: "Enter your name",
            controller: nameController,
            isValid: isValidName,
            onChanged: (text) {
              setState(() {
                isValidName = text.isNotEmpty;
              });
            },
          ),
          CustomInputText(
            title: "Phone Number",
            hintText: "Enter your phone",
            controller: phoneController,
            isValid: isValidPhone,
            keyboardType: TextInputType.phone,
            onChanged: (text) {
              setState(() {
                isValidPhone = validatePhoneNumber(text);
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
              top: 20,
            ),
            child: PrimaryButton(
              title: "Register",
            ),
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
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
            ),
            child: Center(
              child: Text(
                "or register with",
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 20,
            ),
            child: WhiteButton(
              title: "Register with Google",
              icon: 'logo_google.png',
            ),
          ),
        ],
      ),
    );
  }
}
