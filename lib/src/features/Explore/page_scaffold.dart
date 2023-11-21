import 'package:flutter/material.dart';

class PageScaffold extends StatelessWidget {
  final Widget body;
  const PageScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: body),
      appBar: AppBar(
        title: const Text('Adventura'),
      ),
    );
  }
}
