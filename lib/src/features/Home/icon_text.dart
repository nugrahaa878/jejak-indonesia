import 'package:flutter/material.dart';
import 'package:submission_1/src/routes/routes.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  final String? path;

  const IconWithText({
    super.key,
    required this.icon,
    required this.text,
    this.path,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (path != null) {
          Navigator.of(context).pushNamed(Routes.detailChannel);
        }
      },
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.deepPurple,
            size: 40.0,
          ),
          const SizedBox(
            height: 4.0,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
