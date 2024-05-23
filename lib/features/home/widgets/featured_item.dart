import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';
import 'package:real_estate/features/item_view/item_view.dart';

class FeaturedItem extends StatelessWidget {
  FeaturedItem({super.key});
  final List<String> images = [
    'lib/assets/images/house1.jpg',
    'lib/assets/images/house2.jpg',
    'lib/assets/images/house3.jpg',
    'lib/assets/images/house4.jpg',
    'lib/assets/images/house5.jpg',
    'lib/assets/images/house6.jpg',
    'lib/assets/images/house7.jpg',
    'lib/assets/images/house8.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: images.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return ItemView(image: images[index]);
            }));
          },
          child: Padding(
            padding: EdgeInsets.only(bottom: 10.0.h),
            child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        offset: const Offset(8, 20),
                        blurRadius: 24,
                      ),
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: Image(
                        image: AssetImage(images[index]),
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    verticalSpace(10),
                    Text('Apartment', style: AppFonts.style16colorw500),
                    const SizedBox(height: 5),
                    Text('Primary Apartment', style: AppFonts.style18B),
                    verticalSpace(10),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_rounded,
                          color: AppColors.primaryColor,
                        ),
                        const SizedBox(width: 5),
                        Text('Egypt,Giza', style: AppFonts.style15),
                      ],
                    ),
                    verticalSpace(10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                          ),
                          const SizedBox(width: 5),
                          Text('4.5 rating', style: AppFonts.style15),
                        ]),
                        Container(
                          height: 25,
                          width: 2,
                          color: Colors.grey[300],
                        ),
                        Row(children: [
                          const Icon(
                            Icons.send_rounded,
                            color: Colors.greenAccent,
                          ),
                          const SizedBox(width: 5),
                          Text('5.5 km', style: AppFonts.style15),
                        ]),
                        Container(
                          height: 25,
                          width: 2,
                          color: Colors.grey[300],
                        ),
                        Row(children: [
                          const Icon(
                            Icons.date_range,
                            color: Colors.purpleAccent,
                          ),
                          const SizedBox(width: 5),
                          Text('4.5 rating', style: AppFonts.style15),
                        ]),
                      ],
                    )
                  ],
                )),
          ),
        );
      },
    );
  }
}
