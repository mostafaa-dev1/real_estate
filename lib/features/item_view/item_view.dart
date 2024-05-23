import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';
import 'package:real_estate/features/item_view/widgets/contact_icon.dart';
import 'package:real_estate/features/item_view/widgets/more_images.dart';

class ItemView extends StatelessWidget {
  const ItemView({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
            pinned: true,
            expandedHeight: 400,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            centerTitle: true,
            title: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '\$1,600',
                  style: AppFonts.style16color,
                ),
                TextSpan(
                    text: '/month',
                    style:
                        AppFonts.style16g600.copyWith(color: Colors.grey[500])),
              ])),
            ),
            leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: const Icon(
                      CupertinoIcons.arrow_left,
                      size: 27,
                    )),
              ),
            ),
            actions: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: const Icon(
                  CupertinoIcons.heart,
                  size: 27,
                ),
              ),
              horizontalSpace(10)
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(60),
              child: Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                height: 90,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          'Sindad Green Harmony Bulbalk Bogor West Indonesia',
                          style: AppFonts.style18B,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(children: [
                const Icon(
                  Icons.send_rounded,
                  color: Colors.greenAccent,
                  size: 27,
                ),
                horizontalSpace(10),
                Expanded(
                  child: Text('5.1 km . Sindangbrand, Bogor, West java',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppFonts.style14g400),
                ),
              ]),
              verticalSpace(10),
              Row(children: [
                const Icon(
                  Icons.star_rounded,
                  color: Colors.orange,
                  size: 27,
                ),
                SizedBox(width: 10),
                Text('4.8 Rating (20 reviews)', style: AppFonts.style14g400),
              ]),
              verticalSpace(10),
              Row(
                children: [
                  Icon(
                    Icons.location_on_rounded,
                    color: AppColors.primaryColor,
                    size: 27,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Sindangbrand, Bogor, West java',
                    style: AppFonts.style14g400,
                  ),
                ],
              ),
              verticalSpace(10),
              Row(children: [
                ContactIcon(icon: IconBroken.Chat),
                horizontalSpace(10),
                ContactIcon(icon: IconBroken.Call),
                horizontalSpace(10),
                Expanded(
                  child: TextButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.symmetric(vertical: 8.h)),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            AppColors.primaryColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            side: BorderSide(
                                color: AppColors.primaryColor, width: 1.5),
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: Text('Negotiate',
                          style: AppFonts.style16black
                              .copyWith(color: Colors.white))),
                ),
              ]),
              verticalSpace(10),
              Text(
                'Description',
                style: AppFonts.style18B,
              ),
              verticalSpace(10),
              Text(
                'The description text makes up the bulk of your word count, and it\'s where you should review all of the home\'s main features: beds, baths, square footage, lot size, location, upgrades, etc. But don\'t just rattle off a list of all the features. Use compelling, creative language to highlight details that make your home special. Your description should pique buyers\' interest enough that they want to schedule a tour, and as the owner, you are in the unique position of being able to tell a story about what is special about the property.',
                style: AppFonts.style14g400,
              ),
              verticalSpace(10),
              Text(
                'More images',
                style: AppFonts.style18B,
              ),
              verticalSpace(10),
              MoreImages(),
              verticalSpace(10),
            ]),
          ),
        )
      ]),
    );
  }
}
