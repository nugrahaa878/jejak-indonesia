import 'package:flutter/material.dart';

class CardBlog extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String description;
  final String date;

  const CardBlog({
    super.key,
    required this.imgUrl,
    required this.title,
    required this.description,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.asset(
              imgUrl,
              width: 120.0,
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    date,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12.0,
                    ),
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12.0,
                    ),
                    textAlign: TextAlign.start,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
