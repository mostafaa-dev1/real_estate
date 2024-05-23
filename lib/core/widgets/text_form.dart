import 'package:flutter/material.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField(
      {super.key, required this.height, required this.hintText});
  final double height;

  final String hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
          style: AppFonts.style14,
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(10),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: AppColors.primaryColor),
              ),
              hintText: hintText,
              hintStyle: AppFonts.style15,
              filled: true,
              fillColor: Colors.white,
              
              enabledBorder: OutlineInputBorder(
               
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(color: Colors.grey[300]!, width: 1.5),
              ))),
    );
  }
}
