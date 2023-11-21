import 'package:flutter/material.dart';
import 'package:submission_1/src/features/Home/icon_text.dart';
import 'package:submission_1/src/routes/routes.dart';

class MenuIconSection extends StatelessWidget {
  const MenuIconSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconWithText(
                icon: Icons.map_rounded,
                text: 'Destinasi',
                path: Routes.detailChannel,
              ),
              IconWithText(
                icon: Icons.article_rounded,
                text: 'Blog',
                path: Routes.blogList,
              ),
              IconWithText(
                  icon: Icons.airplane_ticket_rounded, text: 'Transportasi'),
              IconWithText(icon: Icons.event_available_rounded, text: 'Jadwal'),
            ],
          ),
          SizedBox(height: 32.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconWithText(icon: Icons.food_bank_rounded, text: 'Kuliner'),
              IconWithText(icon: Icons.emoji_people_rounded, text: 'Guide'),
              IconWithText(icon: Icons.store, text: 'Souvenir'),
              IconWithText(
                  icon: Icons.local_hospital_rounded, text: 'Kesehatan'),
            ],
          ),
        ],
      ),
    );
  }
}
