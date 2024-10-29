import 'package:flutter/material.dart';
import 'package:personalporfolio/common/responsive.dart';
import 'package:personalporfolio/presenter/views/projects/desktopProjects.dart';
import 'package:personalporfolio/presenter/views/projects/mobileProjects.dart';
import 'package:personalporfolio/themes/theme.dart';

class ProjectsScreens extends StatelessWidget {
  const ProjectsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: PorfolioTheme.myTheme,
        home: Scaffold(
            body: const ResponsiveLayout(
                desktop: DesktopProjects(), mobile: MobileProjects())));
  }
}
