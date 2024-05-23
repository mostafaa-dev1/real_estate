import 'package:flutter/material.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class SenderMessage extends StatelessWidget {
  const SenderMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width / 1.5,
              ),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                ),
              ),
              child: Text('hellohellohellohellohellohellohellohellohello',
                  style: AppFonts.style20.copyWith(color: Colors.white))),
          const SizedBox(width: 5),
          const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://www.pngkey.com/png/detail/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png')),
        ],
      ),
    );
  }
}
