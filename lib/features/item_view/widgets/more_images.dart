import 'package:flutter/material.dart';

class MoreImages extends StatelessWidget {
  MoreImages({super.key});

  final List<String> images = [
    'lib/assets/images/living_room.jpg',
    'lib/assets/images/swimming_pool.jpg',
    'lib/assets/images/kitchen.jpg',
    'lib/assets/images/bed_room.jpg',
    'lib/assets/images/bath_room.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        itemCount: images.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                  height: 200,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(images[index]),
                          fit: BoxFit.fill))));
        },
      ),
    );
  }
}
