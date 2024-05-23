import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';
import 'package:real_estate/core/widgets/login_register_button.dart';
import 'package:real_estate/features/start_screen/widgets/login_register_icons.dart';
import 'package:real_estate/features/start_screen/widgets/sign_in_up.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomLeft,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 2,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'lib/assets/images/background.png',
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 20.0.h, left: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign In',
                      style: AppFonts.style25.copyWith(color: Colors.white),
                    ),
                    verticalSpace(10),
                    Text(
                      'Sign in to access your account',
                      style: AppFonts.style14.copyWith(color: Colors.white),
                    ),
                  ],
                ),
              )
            ],
          ),
          verticalSpace(20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              children: [
                SignInUp(),
                verticalSpace(30),
                const LoginIcon(
                    image: 'lib/assets/images/social_media/google.png',
                    text: 'Sign in with Google'),
                verticalSpace(10),
                const LoginIcon(
                    image: 'lib/assets/images/social_media/facebook.png',
                    text: 'Sign in with Facebook'),
                verticalSpace(10),
                const LoginIcon(
                    image: 'lib/assets/images/social_media/apple.png',
                    text: 'Sign in with Apple'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
