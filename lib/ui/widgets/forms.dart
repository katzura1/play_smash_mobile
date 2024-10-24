import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomInputText extends StatelessWidget {
  final String title;
  final String hintText;
  final bool isObsecure;
  final bool isShowTitle;
  final bool isValid;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final Function(String)? onFieldSubmited;
  final Function(String)? onChanged;

  const CustomInputText({
    super.key,
    required this.title,
    required this.hintText,
    this.isObsecure = false,
    required this.controller,
    this.isShowTitle = true,
    this.isValid = true,
    this.keyboardType,
    this.onFieldSubmited,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 37),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: TextFormField(
              obscureText: false,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                  color: !isValid ? Colors.red : grayColor,
                ), // Warna hint/placeholder
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: !isValid ? Colors.red : grayColor,
                  ),
                ),
                contentPadding: const EdgeInsets.all(12),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    color: !isValid ? Colors.red : primaryColor,
                    width: 2.0,
                  ),
                ),
              ),
              controller: controller,
              keyboardType: keyboardType,
              onFieldSubmitted: onFieldSubmited,
              onChanged: onChanged,
            ),
          ),
        ],
      ),
    );
  }
}
