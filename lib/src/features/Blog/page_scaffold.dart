import 'package:flutter/material.dart';

class BlogListScaffold extends StatelessWidget {
  final Widget body;
  const BlogListScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: body),
      appBar: AppBar(
        title: const Text('Blog List'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.deepOrange,
        elevation: 0.2,
      ),
    );
  }
}
