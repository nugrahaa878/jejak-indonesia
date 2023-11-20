import 'package:flutter/material.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> bannerImages = [
      'https://via.placeholder.com/250',
      'https://via.placeholder.com/250',
      'https://via.placeholder.com/250',
      'https://via.placeholder.com/250',
      'https://via.placeholder.com/250',
    ];

    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: bannerImages.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              bannerImages[index],
              width: 250,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}
