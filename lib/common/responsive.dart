import 'package:flutter/material.dart';
import 'package:personalporfolio/common/dimension.dart';


class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({super.key, required this.desktop, required this.mobile});

  final Widget mobile;
  final Widget desktop;



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints){
      if(constraints.maxWidth < Dimension.mobile){
        return mobile;
      } else {
        return desktop;
      }
    });
  }
}
