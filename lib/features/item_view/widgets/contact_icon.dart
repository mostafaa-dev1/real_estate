import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:real_estate/core/theme/colors.dart';

class ContactIcon extends StatelessWidget {
  ContactIcon({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(vertical: 8.h)),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: const BorderRadius.all(Radius.circular(15)),
              side: BorderSide(color: AppColors.primaryColor, width: 1.5),
            ),
          ),
        ),
        onPressed: () {},
        child: Icon(
          icon,
          color: AppColors.primaryColor,
        ));
  }
}
