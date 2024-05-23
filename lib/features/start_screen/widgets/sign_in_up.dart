import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/core/helpers/extentions.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/routing/app_routs.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class SignInUp extends StatelessWidget {
  const SignInUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextButton(
            onPressed: () {
              context.pushNamed(AppRoutes.login);
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 8.h)),
              backgroundColor:
                  MaterialStateProperty.all(AppColors.primaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
              ),
            ),
            child: Center(
              child: Text(
                'Sign In',
                style: AppFonts.style18.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
        horizontalSpace(10),
        Expanded(
          child: TextButton(
            onPressed: () {
              context.pushNamed(AppRoutes.register);
            },
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 8.h)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  side: BorderSide(color: Colors.grey[400]!, width: 1.5),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.white),
            ),
            child: Center(
              child: Text(
                'Sign Up',
                style: AppFonts.style18.copyWith(color: Colors.black),
              ),
            ),
          ),
        )
      ],
    );
  }
}
