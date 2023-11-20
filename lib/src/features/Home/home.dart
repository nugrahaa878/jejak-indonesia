import 'package:flutter/material.dart';
import 'package:submission_1/src/features/Home/banner.dart';
import 'package:submission_1/src/features/Home/menu_icon.dart';
import 'package:submission_1/src/features/Home/page_scaffold.dart';
import 'package:submission_1/src/features/Home/recommendation.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const PageScaffold(
      body: Column(
        children: [
          BannerSection(),
          MenuIconSection(),
          RecommendationSection(),
        ],
      ),
    );
  }
}
