import 'package:flutter/material.dart';
import 'package:submission_1/src/features/Blog/card_blog.dart';
import 'package:submission_1/src/features/Blog/constants.dart';
import 'package:submission_1/src/features/Blog/models.dart';
import 'package:submission_1/src/features/Blog/page_scaffold.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({super.key});

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  late TextEditingController _textEditingController;
  late List<BlogData> filteredBlog = [];

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
    filteredBlog = BlogConstants.listBlog;
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _filterList(String keyword) {
    setState(() {
      if (keyword.isEmpty) {
        filteredBlog = BlogConstants.listBlog;
      } else {
        filteredBlog = BlogConstants.listBlog
            .where((blog) =>
                blog.title.toLowerCase().contains(keyword.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlogListScaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Cari Blog',
              ),
              onChanged: (value) {
                setState(() {
                  _filterList(value);
                });
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredBlog.length,
              itemBuilder: (context, index) {
                final blogData = filteredBlog[index];
                return CardBlog(
                  imgUrl: blogData.img,
                  title: blogData.title,
                  description: blogData.description,
                  date: blogData.date,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
