import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/dimension.dart';
import 'package:personalporfolio/common/imageConstant.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/urlLauncherMixin.dart';
import 'package:personalporfolio/common/videoPlayer.dart';
import 'package:unicons/unicons.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../common/customButton.dart';

class MobileMyNeoProjects extends StatefulWidget {
  const MobileMyNeoProjects({super.key});

  @override
  State<MobileMyNeoProjects> createState() => _MobileMyNeoProjectsState();
}

class _MobileMyNeoProjectsState extends State<MobileMyNeoProjects> with UrlLauncher {

  static const andUrl =
      "https://play.google.com/store/apps/details?id=com.megathilendeavours.megathil";
  static const iOSUrl = "https://apps.apple.com/us/app/neovault-workplace-drug-test/id6444656514";

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
                MyCustomButton(
                    onTap: () {
                      launchAppStore(iOSUrl);
                    },
                    heading: "App Store",
                    icons: Icon(UniconsLine.apple)),
                SizedBox(height: 24,),
                Image.asset(ImageConstant.myneoDash, width: size.width, height: 460,),
                Image.asset(ImageConstant.myneoBio, width: size.width, height: 460,),
                SizedBox(height: 32,),
                SubHeadingText(text: "Main Functionality"),
                SizedBox(height: 24,),
                _coreFunctionality(size)
              ],
            ),
          ),
        ));
  }



  Widget _heading(Size size) {
    return Row(
      children: [
        HeadingText(text: "MyNeo"),
        SizedBox(width: 32,),
        Image.asset(ImageConstant.myneoLogo, width: size.width * 0.3, height: 64,),
      ],
    );
  }

  Widget _projDesc() {
    return DescriptionText(text: Content.myneoDesc);
  }

  Widget _skillSet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• SwiftUI"),
        Text("• MVVM"),
        Text("• Bio Metric Auth"),
        Text("• QR Code Scanner"),
        Text("• Core Data"),
        Text("• Twillio"),
      ],
    );
  }

  Widget _coreFunctionality(Size size){
    return SizedBox(
      width: size.width,
      child: Card(
        elevation: 1,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(ImageConstant.myneoQr, width: size.width, height: 460),
              Container(
                  width: size.width ,
                  padding: EdgeInsets.only(top: 16),
                  child: Text(Content.myneoQR))
            ],
          ),
        ),
      ),
    );
  }
}
