import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:real_estate/core/helpers/extentions.dart';
import 'package:real_estate/core/routing/app_routs.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';
import 'package:real_estate/core/widgets/text_form.dart';
import 'package:real_estate/core/widgets/text_form_name.dart';
import 'package:real_estate/features/home/home_page.dart';
import 'package:real_estate/features/start_screen/widgets/login_register_icons.dart';
import 'package:real_estate/core/widgets/login_register_button.dart';
import 'package:real_estate/features/sign_up/sign_up.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Sign In', style: AppFonts.style25)),
                const SizedBox(height: 20),
                const TextFromName(name: 'Email'),
                const AppTextFormField(height: 55, hintText: 'Email'),
                const SizedBox(height: 20),
                const TextFromName(name: 'Password'),
                const AppTextFormField(height: 55, hintText: 'Password'),
                const SizedBox(height: 20),
                Align(
                    alignment: Alignment.centerLeft,
                    child:
                        Text('Forgot Password?', style: AppFonts.style14w600)),
                const SizedBox(height: 20),
                LoginRegisterButton(
                  text: 'Sign In',
                  onPressed: () {
                    context.pushNamedAndRemoveUntil(AppRoutes.home);
                  },
                ),
                SizedBox(height: 40.h),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const RegisterScreen();
                      }));
                    },
                    child: Text.rich(
                      TextSpan(
                          text: 'Don\'t have an account? ',
                          style: AppFonts.style14g400,
                          children: [
                            TextSpan(
                                text: 'Sign Up', style: AppFonts.style16color)
                          ]),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
