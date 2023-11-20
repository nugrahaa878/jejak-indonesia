import 'package:flutter/material.dart';
import 'package:submission_1/src/features/DetailChannel/page_scaffold.dart';

class DetailChannel extends StatelessWidget {
  const DetailChannel({super.key});

  @override
  Widget build(BuildContext context) {
    return const DetailChannelScaffold(
      body: Column(
        children: [
          Text('Detail Channel'),
        ],
      ),
    );
  }
}
