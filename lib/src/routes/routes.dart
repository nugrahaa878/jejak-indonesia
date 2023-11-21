import 'package:flutter/material.dart';
import 'package:submission_1/src/features/Account/account.dart';
import 'package:submission_1/src/features/Blog/blog.dart';
import 'package:submission_1/src/features/DetailChannel/detail_channel.dart';
import 'package:submission_1/src/features/Explore/explore.dart';
import 'package:submission_1/src/features/Home/home.dart';

class Routes {
  static const String home = '/';
  static const String explore = '/explore';
  static const String account = '/account';
  static const String blogList = '/blog/list';
  static const String detailChannel = '/detail/channel';

  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    return MaterialPageRoute(
      settings: routeSettings,
      builder: (context) {
        switch (routeSettings.name) {
          case home:
            return const Home();
          case explore:
            return const ExplorePage();
          case account:
            return const AccountPage();
          case blogList:
            return const BlogPage();
          case detailChannel:
            return const DetailChannel();
          default:
            return const Home();
        }
      },
    );
  }
}
