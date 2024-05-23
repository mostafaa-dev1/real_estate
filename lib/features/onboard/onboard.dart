import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:real_estate/features/onboard/widgets/image_button.dart';
import 'package:real_estate/features/onboard/widgets/top_text_logo.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [TopTextLogo(), ImageButton()],
      ),
    );
  }
}
