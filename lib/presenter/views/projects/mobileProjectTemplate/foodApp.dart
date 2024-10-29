import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/dimension.dart';
import 'package:personalporfolio/common/imageConstant.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/videoPlayer.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/customButton.dart';

class MobileFoodAppProjects extends StatefulWidget {
  const MobileFoodAppProjects({super.key});

  @override
  State<MobileFoodAppProjects> createState() => _MobileFoodAppProjectsState();
}

class _MobileFoodAppProjectsState extends State<MobileFoodAppProjects> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        // height: 1400,
        // width: size.width,
        padding: EdgeInsets.all(16),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _heading(size),
                SizedBox(height: 16,),
                _projDesc(),
                SizedBox(height: 12,),
                _skillSet(),
                SizedBox(height: 24,),
                Text("* This project  available for shenll internal developement"),
                Image.asset(ImageConstant.foodAppDash, width: size.width, height: 460,),
                Image.asset(ImageConstant.foodAppProd, width: size.width, height: 460,),

              ],
            ),
          ),
        ));
  }

  Widget _heading(Size size) {
    return Row(
      children: [
        HeadingText(text: "Food App"),
        SizedBox(width: 16,),
        Image.asset(ImageConstant.foodAppLogo, width: size.width * 0.3, height: 64,),
      ],
    );
  }

  Widget _projDesc() {
    return DescriptionText(text: Content.foodAppDesc);
  }

  Widget _skillSet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• SwiftUI"),
        Text("• MVVM"),
        Text("• MapKit"),
        Text("• Google Map"),
        Text("• Localization"),
      ],
    );
  }

}
