import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';
import 'package:real_estate/core/widgets/text_form.dart';
import 'package:real_estate/core/widgets/text_form_name.dart';
import 'package:real_estate/features/start_screen/widgets/login_register_icons.dart';
import 'package:real_estate/core/widgets/login_register_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text('Sign Up', style: AppFonts.style25)),
                const SizedBox(height: 20),
                const TextFromName(name: 'Name'),
                const AppTextFormField(height: 55, hintText: 'Name'),
                const SizedBox(height: 20),
                const TextFromName(name: 'Email'),
                const AppTextFormField(height: 55, hintText: 'Email'),
                const SizedBox(height: 20),
                const TextFromName(name: 'Password'),
                const AppTextFormField(height: 55, hintText: 'Password'),
                const SizedBox(height: 20),
                LoginRegisterButton(
                  text: 'Sign Up',
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey[300],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Text('or register with', style: AppFonts.style15),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Container(
                        height: 1,
                        color: Colors.grey[300],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
