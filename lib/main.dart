import 'package:flutter/material.dart';
import 'package:test_1/pages/discover_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'AirFactory',
      ),
      home: const DiscoverHomePage(),
    );
  }
}
