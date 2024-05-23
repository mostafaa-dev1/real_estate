import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/theme/fonts.dart';

class LoginIcon extends StatelessWidget {
  const LoginIcon({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(15)),
        border: Border.all(color: Colors.grey[300]!, width: 1.5),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0.w),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage(image), height: 20.h),
            horizontalSpace(10),
            Text(text,
                style: AppFonts.style16colorw500.copyWith(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
