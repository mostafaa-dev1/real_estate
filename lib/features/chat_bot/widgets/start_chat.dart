import 'package:flutter/material.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class StartChat extends StatelessWidget {
  const StartChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Image(
          image: AssetImage(
            'lib/assets/images/chatbot.png',
          ),
          fit: BoxFit.scaleDown,
        ),
        const SizedBox(height: 15),
        Text('Chat Bot', style: AppFonts.style22),
        verticalSpace(50),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
          ),
          child: Text('Start Chatting',
              style: AppFonts.style18.copyWith(color: Colors.white)),
        )
      ]),
    );
  }
}
