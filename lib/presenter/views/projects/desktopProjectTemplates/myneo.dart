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

class MyNeoProjects extends StatefulWidget {
  const MyNeoProjects({super.key});

  @override
  State<MyNeoProjects> createState() => _MyNeoProjectsState();
}

class _MyNeoProjectsState extends State<MyNeoProjects> with UrlLauncher {

  static const andUrl =
      "https://play.google.com/store/apps/details?id=com.megathilendeavours.megathil";
  static const iOSUrl = "https://apps.apple.com/us/app/neovault-workplace-drug-test/id6444656514";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        // height: 1400,
        // width: size.width,
        padding: EdgeInsets.all(32),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Column(
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
                            icons: Icon(UniconsLine.apple))
                      ],
                    ),
                    SizedBox(width: 64,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(ImageConstant.myneoDash, width: size.width * 0.2, height: 460,),
                            Image.asset(ImageConstant.myneoBio, width: size.width * 0.2, height: 460,),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 32,),
                SubHeadingText(text: "Main Functionality"),
                SizedBox(height: 24,),
                _coreFunctionality(size)
              ],
            ),
          ),
        ));
  }

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch this $url');
    }
  }

  Widget _heading(Size size) {
    return Row(
      children: [
        HeadingText(text: "MyNeo"),
        SizedBox(width: 32,),
        Image.asset(ImageConstant.myneoLogo, width: size.width * 0.08, height: 64,),
      ],
    );
  }

  Widget _projDesc() {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: DescriptionText(text: Content.myneoDesc));
  }

  Widget _skillSet() {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("• SwiftUI"),
            Text("• MVVM"),
            Text("• Bio Metric Auth"),
            Text("• QR Code Scanner"),
            Text("• Core Data"),
            Text("• Twillio"),
          ],
        ));
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
              Image.asset(ImageConstant.myneoQr, width: size.width * 0.2, height: 460),
              Container(
                  width: size.width * 0.5 ,
                  padding: EdgeInsets.only(top: 16),
                  child: Text(Content.myneoQR))
            ],
          ),
        ),
      ),
    );
  }
}
