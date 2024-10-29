import 'package:flutter/material.dart';

import '../../../common/responsive.dart';
import 'desktop_dashboard.dart';
import 'mobile_dashboard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(desktop: DesktopDashboardScreen(), mobile: MobileDashboardScreen());
  }
}
