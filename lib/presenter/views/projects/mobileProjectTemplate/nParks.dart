import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/dimension.dart';
import 'package:personalporfolio/common/imageConstant.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/videoPlayer.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/customButton.dart';

class MobileNParksProject extends StatefulWidget {
  const MobileNParksProject({super.key});

  @override
  State<MobileNParksProject> createState() => _MobileNParksProjectState();
}

class _MobileNParksProjectState extends State<MobileNParksProject> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        // height: 800,
        // width: size.width,
        padding: EdgeInsets.all(32),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _heading(size),
                SizedBox(height: 16,),
                _projDesc(),
                SizedBox(height: 12,),
                _skillSet(),
                SizedBox(height: 24,),
                Text("* Available exclusively for internal Singapore government use"),
                Image.asset(ImageConstant.NParks, width: size.width , height: 460,),
              ],
            ),
          ),
        ));
  }

  Widget _heading(Size size) {
    return Row(
      children: [
        HeadingText(text: "NParks AVS"),
        SizedBox(width: 32,),
        Image.asset(ImageConstant.nparksLogo, width: size.width * 0.2, height: 64,),
      ],
    );
  }

  Widget _projDesc() {
    return DescriptionText(text: Content.nParksDesc);
  }

  Widget _skillSet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• SwiftUI"),
        Text("• Redux and Combine"),
        Text("• Offline storage"),
        Text("• NoSql Db"),
        Text("• Realm Query"),
        Text("• XCTest"),
      ],
    );
  }

}
