import 'package:flutter/material.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          'Notifications',
          style: AppFonts.style22,
        ),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return notificationItem();
        },
      ),
    );
  }
}

Widget notificationItem() => Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: ListTile(
            leading: const CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                  'https://www.pngkey.com/png/detail/114-1149878_setting-user-avatar-in-specific-size-without-breaking.png'),
            ),
            title: Text(
              'A new property has been added',
              style: AppFonts.style18w500,
            ),
            subtitle: Text(
              '4m ago',
              style: AppFonts.style15,
            )),
      ),
    );
