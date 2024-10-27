import 'package:flutter/material.dart';
import 'package:play_smash/shared/theme.dart';
import 'package:play_smash/ui/widgets/buttons.dart';
import 'package:play_smash/ui/widgets/forms.dart';

class VerifyAccountPage extends StatefulWidget {
  const VerifyAccountPage({super.key});

  @override
  State<VerifyAccountPage> createState() => _VerifyAccountPageState();
}

class _VerifyAccountPageState extends State<VerifyAccountPage> {
  final TextEditingController codeController = TextEditingController(text: "");

  bool isValidCode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30.0,
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 90,
              bottom: 20,
            ),
            child: Center(
              child: Text(
                "Verify Account",
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
            title: "Code",
            hintText: "Enter your 4 digit code",
            controller: codeController,
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.done,
            isValid: isValidCode,
            onChanged: (text) {
              setState(() {
                isValidCode = text.length == 4;
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t receive the code ?",
                  textAlign: TextAlign.center,
                  style: primaryTextStyle.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  child: Text(
                    "Resend Code",
                    textAlign: TextAlign.center,
                    style: primaryTextStyle.copyWith(
                      fontSize: 15,
                      fontWeight: bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: Text(
              "Resend code in 00:59",
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(
                fontSize: 15,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30.0),
        child: PrimaryButton(
          title: "Verify Account",
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/login',
              (route) => false,
            );
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
