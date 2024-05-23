import 'package:flutter/material.dart';
import 'package:real_estate/core/theme/fonts.dart';

class TextFromName extends StatelessWidget {
  final String name;
  const TextFromName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Text(name, style: AppFonts.style16g600));
  }
}
