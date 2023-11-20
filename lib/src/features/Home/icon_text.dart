import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconWithText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
