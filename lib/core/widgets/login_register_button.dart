import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class LoginRegisterButton extends StatelessWidget {
  const LoginRegisterButton(
      {super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 55,
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Center(
          child:
              Text(text, style: AppFonts.style20.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
