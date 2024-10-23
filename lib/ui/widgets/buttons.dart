import 'package:flutter/material.dart';
import 'package:play_smash/shared/theme.dart';

class PrimaryButton extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final VoidCallback? onPressed;

  const PrimaryButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: whiteTextStyle.copyWith(
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
