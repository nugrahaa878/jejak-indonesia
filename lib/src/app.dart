import 'package:flutter/material.dart';
import 'package:submission_1/src/routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jelajahi',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
    );
  }
}
