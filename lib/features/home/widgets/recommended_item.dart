import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';
import 'dart:math' as math;

import 'package:real_estate/features/item_view/item_view.dart';

class RecommendedItems extends StatefulWidget {
  const RecommendedItems({super.key});

  @override
  State<RecommendedItems> createState() => _RecommendedItemsState();
}

class _RecommendedItemsState extends State<RecommendedItems> {
  @override
  late PageController pageController;
  List<String> images = [
    'lib/assets/images/house8.jpg',
    'lib/assets/images/house6.jpg',
    'lib/assets/images/house5.jpg',
  ];
  int? staticIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(viewportFraction: 0.9);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.50,
      child: PageView.builder(
        clipBehavior: Clip.none,
        controller: pageController,
        itemCount: images.length,
        itemBuilder: (context, index) {
          // double offset = pageOffset - index;

          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemView(
                      image: images[index],
                    ),
                  ));
            },
            child: AnimatedBuilder(
              animation: pageController,
              builder: (context, child) {
                double pageOffset = 0;
                if (pageController.position.haveDimensions) {
                  pageOffset = pageController.page! - index;
                }
                double gauss =
                    math.exp(-(math.pow((pageOffset.abs() - 0.5), 2) / 0.08));
                return Transform.translate(
                  offset: Offset(-32 * gauss * pageOffset.sign, 0),
                  child: Container(
                    clipBehavior: Clip.none,
                    margin:
                        const EdgeInsets.only(left: 8, right: 8, bottom: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          offset: const Offset(8, 20),
                          blurRadius: 24,
                        ),
                      ],
                    ),
                    child: Column(
                      children: <Widget>[
                        // Image
                        ClipRRect(
                          borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(32)),
                          child: Image.asset(
                            images[index],
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment(-pageOffset.abs(), 0),
                            fit: BoxFit.none,
                          ),
                        ),
                        Expanded(child: child!),
                      ],
                    ),
                  ),
                );
              },
              child: Column(
                children: [
                  verticalSpace(5),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Apartment', style: AppFonts.style16colorw500),
                          const SizedBox(height: 5),
                          Text('Primary Apartment', style: AppFonts.style18B),
                          verticalSpace(5),
                          Row(children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: AppColors.primaryColor,
                            ),
                            horizontalSpace(3),
                            Text('Egypt, Giza', style: AppFonts.style15),
                          ]),
                          verticalSpace(5),
                          Row(
                            children: [
                              Text.rich(TextSpan(children: [
                                TextSpan(
                                  text: '\$1,600',
                                  style: AppFonts.style18BColor,
                                ),
                                TextSpan(
                                    text: '/month', style: AppFonts.style15),
                              ])),
                              const Spacer(),
                              const Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.pinkAccent,
                                size: 27,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
// SizedBox(
//       height: MediaQuery.of(context).size.height * 0.55,
//       child: PageView.builder(
//           clipBehavior: Clip.none,
//           controller: pageController,
//           scrollDirection: Axis.horizontal,
//           itemCount: images.length,
//           itemBuilder: (context, index) {
//             double pageOffset = 0;
//             if (pageController.position.haveDimensions) {
//               setState(() {
//                 pageOffset = pageController.page!;
//               });
//             }
//             return AnimatedBuilder(
//                 animation: pageController,
//                 builder: (context, child) {
//                   return Container(
//                     margin:
//                         const EdgeInsets.only(left: 10, right: 8, bottom: 25),
//                     clipBehavior: Clip.none,
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                     child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                               topLeft: Radius.circular(25),
//                               topRight: Radius.circular(25),
//                             ),
//                             child: Image.asset(
//                               images[index],
//                               fit: BoxFit.none,
//                               height: MediaQuery.of(context).size.height * 0.3,
//                               alignment: Alignment(pageOffset, 0),
//                             ),
//                           ),
//                           const SizedBox(height: 5),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 Text('Apartment', style: AppFonts.style18color),
//                                 const SizedBox(height: 5),
//                                 Text('Primary Apartment',
//                                     style: AppFonts.style20),
//                                 const SizedBox(height: 10),
//                                 Row(children: [
//                                   Icon(
//                                     Icons.location_on_rounded,
//                                     color: AppColors.primaryColor,
//                                   ),
//                                   const SizedBox(width: 5),
//                                   Text('Egypt, Giza', style: AppFonts.style18),
//                                 ]),
//                                 const SizedBox(height: 10),
//                                 Row(
//                                   children: [
//                                     Text.rich(TextSpan(children: [
//                                       TextSpan(
//                                         text: '\$1,600',
//                                         style: AppFonts.style18BColor,
//                                       ),
//                                       TextSpan(
//                                           text: '/month',
//                                           style: AppFonts.style18),
//                                     ])),
//                                     const Spacer(),
//                                     const Icon(
//                                       CupertinoIcons.heart_fill,
//                                       color: Colors.pinkAccent,
//                                       size: 27,
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: 10),
//                               ],
//                             ),
//                           ),
//                         ]),
//                   );
//                 });
//           }),
//     );