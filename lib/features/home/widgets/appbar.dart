import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: Icon(
        IconBroken.More_Square,
        color: Colors.grey[500],
      ),
      title: Column(children: [
        Text(
          'Location',
          style: AppFonts.style18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_rounded,
              color: AppColors.primaryColor,
              size: 18,
            ),
            const SizedBox(width: 5),
            Text('Egypt,Giza', style: AppFonts.style20),
            const SizedBox(width: 5),
            const Icon(
              IconBroken.Arrow___Down_2,
            ),
          ],
        )
      ]),
      actions: [
        Icon(
          IconBroken.Notification,
          color: Colors.grey[500],
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
