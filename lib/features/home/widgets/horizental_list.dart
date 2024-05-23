import 'package:flutter/material.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/theme/colors.dart';
import 'package:real_estate/core/theme/fonts.dart';

class HorizentalList extends StatefulWidget {
  const HorizentalList({super.key});

  @override
  State<HorizentalList> createState() => _HorizentalListState();
}

class _HorizentalListState extends State<HorizentalList> {
  @override
  int selectedIndex = 0;
  List<String> itemTitle = [
    'Villa',
    'Hotel',
    'Apartment',
    'Office',
    'Shop',
  ];
  List<IconData> itemIcon = [
    Icons.home,
    Icons.hotel_sharp,
    Icons.apartment,
    Icons.place,
    Icons.store,
  ];
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(right: 10),
                height: 40,
                decoration: BoxDecoration(
                    color: selectedIndex == index
                        ? AppColors.primaryColor
                        : Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(25)),
                    border: Border.all(
                      color: selectedIndex == index
                          ? AppColors.primaryColor
                          : Colors.grey[300]!,
                    )),
                child: Row(children: [
                  Icon(
                    itemIcon[index],
                    color: selectedIndex == index
                        ? Colors.white
                        : Colors.grey[400],
                  ),
                  horizontalSpace(10),
                  Text(itemTitle[index],
                      style: selectedIndex == index
                          ? AppFonts.style15.copyWith(color: Colors.white)
                          : AppFonts.style15),
                ])),
          );
        },
      ),
    );
  }
}
