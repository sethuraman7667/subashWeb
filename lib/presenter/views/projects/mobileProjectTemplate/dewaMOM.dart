import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/dimension.dart';
import 'package:personalporfolio/common/imageConstant.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/urlLauncherMixin.dart';
import 'package:personalporfolio/common/videoPlayer.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/customButton.dart';

class MobileDewaMom extends StatefulWidget {
  const MobileDewaMom({super.key});

  @override
  State<MobileDewaMom> createState() => _MobileDewaMomState();
}

class _MobileDewaMomState extends State<MobileDewaMom> with UrlLauncher {
  final iOSUrl = "https://apps.apple.com/in/app/dewa/id364928325";
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        // height: 800,
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
                MyCustomButton(
                    onTap: () {
                      launchAppStore(iOSUrl);
                    },
                    heading: "App Store",
                    icons: Icon(UniconsLine.apple)),
                SizedBox(height: 24,),
                Image.asset(ImageConstant.dewaSplash, width: size.width, height: 460,),
                Image.asset(ImageConstant.dewaLogin, width: size.width, height: 460,),

              ],
            ),
          ),
        ));
  }

  Widget _heading(Size size) {
    return Column(
      children: [
        HeadingText(text: "Dubai Electricity and Water Authority"),
        // SizedBox(width: 32,),
        Image.asset(ImageConstant.dewaLogo, width: size.width, height: 64,),
      ],
    );
  }

  Widget _projDesc() {
    return DescriptionText(text: Content.dewaDesc);
  }

  Widget _skillSet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• UIKit"),
        Text("• Core Data"),
        Text("• Clean Architecture"),
        Text("• Modular Architecture"),
        Text("• API Integration"),
        Text("• Memory Management"),
        Text("• XCTest"),
      ],
    );
  }

}
