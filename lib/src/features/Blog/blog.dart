import 'package:flutter/material.dart';
import 'package:submission_1/src/features/Blog/card_blog.dart';
import 'package:submission_1/src/features/Blog/constants.dart';
import 'package:submission_1/src/features/Blog/page_scaffold.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlogListScaffold(
      body: ListView.builder(
        itemCount: BlogConstants.listBlog.length,
        itemBuilder: (context, index) {
          final blogData = BlogConstants.listBlog[index];
          return CardBlog(
            imgUrl: blogData.img,
            title: blogData.title,
            description: blogData.description,
            date: blogData.date,
          );
        },
      ),
    );
  }
}
