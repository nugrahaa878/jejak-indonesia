import 'package:flutter/material.dart';
import 'package:submission_1/src/features/Home/home.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  return MaterialPageRoute(
    settings: routeSettings,
    builder: (context) {
      switch (routeSettings.name) {
        default:
          return const Home();
      }
    },
  );
}
