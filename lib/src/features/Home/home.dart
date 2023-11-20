import 'package:flutter/material.dart';
import 'package:submission_1/src/features/Home/constants.dart';
import 'package:submission_1/src/features/Home/menu_icon.dart';
import 'package:submission_1/src/features/Home/page_scaffold.dart';
import 'package:submission_1/src/features/Home/recommendation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(bottom: 36.0),
          child: Column(
            children: [
              // BannerSection(),
              MenuIconSection(),
              RecommendationSection(
                channelName: 'Rekomendasi Tempat Wisataa',
                listBannerImages: HomeConstants.bannerImages,
                listLocationName: HomeConstants.destinationName,
              ),
              RecommendationSection(
                channelName: 'Rekomendasi Penginapan',
                listBannerImages: HomeConstants.hotelImages,
                listLocationName: HomeConstants.hotelNames,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
