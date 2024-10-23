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

class WhiteButton extends StatelessWidget {
  final double height;
  final double width;
  final String title;
  final VoidCallback? onPressed;
  final String? icon;

  const WhiteButton({
    super.key,
    required this.title,
    this.width = double.infinity,
    this.height = 50,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: primaryColor, // Warna border
          width: 2.0, // Lebar border
        ),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (icon != null
                ? Padding(
                    padding: const EdgeInsets.only(
                      right: 11,
                    ),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/${icon!}',
                          ),
                        ),
                      ),
                    ),
                  )
                : Container()),
            Text(
              title,
              style: primaryTextStyle.copyWith(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
