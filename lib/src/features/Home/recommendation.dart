import 'package:flutter/material.dart';
import 'package:submission_1/src/features/Home/card_item.dart';

class RecommendationSection extends StatelessWidget {
  final List<String> listBannerImages;
  final List<String> listLocationName;
  final String channelName;

  const RecommendationSection({
    super.key,
    required this.listBannerImages,
    required this.listLocationName,
    required this.channelName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            channelName,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 12.0),
          SizedBox(
            height: 130,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listBannerImages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CardItem(
                    imgUrl: listBannerImages[index],
                    name: listLocationName[index],
                  ),
                );
              },
            ),
          ),
          const Row(
            children: [
              Expanded(
                child: Text(
                  'Selengkapnya',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
