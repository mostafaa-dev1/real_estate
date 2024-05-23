import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/core/helpers/extentions.dart';
import 'package:real_estate/core/routing/app_routs.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class ImageButton extends StatelessWidget {
  const ImageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              stops: const [0.14, 0.4],
            ),
          ),
          child: const Image(
            image: AssetImage('lib/assets/images/Screen.png'),
            width: double.infinity,
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20.0.w, right: 20.0.w, bottom: 20.0.h),
          child: TextButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(AppColors.primaryColor),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              minimumSize:
                  MaterialStateProperty.all(const Size(double.infinity, 55)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            onPressed: () {
              context.pushNamedAndRemoveUntil(AppRoutes.start);
            },
            child: Text(
              'Get Started',
              style: AppFonts.style18w500.copyWith(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
