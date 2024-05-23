import 'package:flutter/material.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/theme/fonts.dart';

class TopTextLogo extends StatelessWidget {
  const TopTextLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(10),
          Text(
            'Estate',
            style: AppFonts.style20,
          ),
          verticalSpace(25),
          Text(
            'Find Your Dream House With Our Real Estate',
            textAlign: TextAlign.start,
            style: AppFonts.style25,
          ),
          verticalSpace(15),
          Text(
            'We help you to find your dream house with our real estate. We have thousands of houses for you.',
            textAlign: TextAlign.start,
            style: AppFonts.style14,
          ),
        ],
      ),
    );
  }
}
