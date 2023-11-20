import 'package:flutter/material.dart';

class DetailChannelScaffold extends StatelessWidget {
  final Widget body;
  const DetailChannelScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: body),
      appBar: AppBar(
        title: const Text('JejakIndonesia'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.deepPurple,
      ),
    );
  }
}
