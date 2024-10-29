import 'package:flutter/material.dart';
import 'package:personalporfolio/presenter/views/home/desktop_dashboard.dart';
import 'package:personalporfolio/presenter/views/home/home.dart';
import 'package:personalporfolio/presenter/views/home/mobile_dashboard.dart';
import 'package:personalporfolio/common/responsive.dart';
import 'package:personalporfolio/presenter/views/projects/projects.dart';
import 'package:personalporfolio/themes/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Subash portfolio',
      theme: PorfolioTheme.myTheme,
      home: const HomeScreen(),
    );
  }
}

