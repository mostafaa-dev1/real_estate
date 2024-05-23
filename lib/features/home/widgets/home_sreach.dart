import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:icon_broken/icon_broken.dart';
import 'package:real_estate/core/helpers/spacing.dart';
import 'package:real_estate/core/theme/fonts.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            height: 55.h,
            child: TextFormField(
                decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(5),
                    prefixIcon: Icon(
                      IconBroken.Search,
                      color: Colors.grey[500],
                      size: 27,
                    ),
                    border: InputBorder.none,
                    hintText: 'Search for properties',
                    hintStyle: AppFonts.style15,
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide(color: Colors.white),
                    ))),
          ),
        ),
        horizontalSpace(5),
        Container(
          height: 50.h,
          width: 55.w,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Icon(
            IconBroken.Filter,
            color: Colors.grey[500],
          ),
        )
      ],
    );
  }
}
