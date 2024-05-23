import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';
import 'package:real_estate/features/chat_bot/chat_bot.dart';
import 'package:real_estate/features/home/widgets/featured_item.dart';
import 'package:real_estate/features/home/widgets/home_sreach.dart';
import 'package:real_estate/features/home/widgets/horizental_list.dart';
import 'package:real_estate/features/home/widgets/recommended_item.dart';
import 'package:real_estate/features/notifications/notifications.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.backgroundColor,
          centerTitle: true,
          leading: Icon(
            IconBroken.More_Square,
            color: Colors.grey[500],
          ),
          title: Column(children: [
            Text(
              'Location',
              style: AppFonts.style14g400,
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
                Text('Egypt,Giza', style: AppFonts.style16black),
                const SizedBox(width: 5),
                const Icon(
                  IconBroken.Arrow___Down_2,
                ),
              ],
            )
          ]),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ChatBot();
                }));
              },
              child: Icon(
                IconBroken.Chat,
                color: Colors.grey[500],
              ),
            ),
            horizontalSpace(10),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const Notifications();
                }));
              },
              child: Icon(
                IconBroken.Notification,
                color: Colors.grey[500],
              ),
            ),
            horizontalSpace(10),
          ],
        ),
        backgroundColor: AppColors.backgroundColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeSearch(),
                verticalSpace(15),
                const HorizentalList(),
                verticalSpace(20),
                Row(
                  children: [
                    Text('Recommended', style: AppFonts.style20B),
                    const Spacer(),
                    Text('See all', style: AppFonts.style16colorw500),
                  ],
                ),
                verticalSpace(20),
                const RecommendedItems(),
                verticalSpace(20),
                Row(
                  children: [
                    Text('Featured', style: AppFonts.style20B),
                    const Spacer(),
                    Text('See all', style: AppFonts.style16colorw500),
                  ],
                ),
                verticalSpace(10),
                FeaturedItem(),
              ],
            ),
          ),
        ));
  }
}
