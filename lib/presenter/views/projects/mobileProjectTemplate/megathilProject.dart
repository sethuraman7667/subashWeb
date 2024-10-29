import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/dimension.dart';
import 'package:personalporfolio/common/imageConstant.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/urlLauncherMixin.dart';
import 'package:personalporfolio/common/videoPlayer.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/customButton.dart';

class MobileMegathilProjects extends StatefulWidget {
  const MobileMegathilProjects({super.key});

  @override
  State<MobileMegathilProjects> createState() => _MobileMegathilProjectsState();
}

class _MobileMegathilProjectsState extends State<MobileMegathilProjects> with UrlLauncher {
  static const andUrl =
      "https://play.google.com/store/apps/details?id=com.megathilendeavours.megathil";
  static const iOSUrl =
      "https://play.google.com/store/apps/details?id=com.megathilendeavours.megathil";

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        // height: 1400,
        // width: size.width,
        padding: EdgeInsets.all(8),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _heading(size),
                    SizedBox(
                      height: 16,
                    ),
                    _projDesc(),
                    SizedBox(
                      height: 12,
                    ),
                    _skillSet(),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyCustomButton(
                            onTap: () {
                              launchAppStore(andUrl);
                            },
                            heading: "Play Store",
                            icons: Icon(UniconsLine.google_play)),
                        SizedBox(
                          width: 24,
                        ),
                        MyCustomButton(
                            onTap: () {
                              launchAppStore(andUrl);
                            },
                            heading: "App Store",
                            icons: Icon(UniconsLine.apple)),

                      ],
                    )
                  ],
                ),
                SizedBox(height: 32,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      ImageConstant.megathilDash,
                      width: size.width ,
                      height: 460,
                    ),
                    SizedBox(height: 16,),
                    Image.asset(
                      ImageConstant.megathilDetailAnalysis,
                      width: size.width,
                      height: 460,
                    ),
                  ],
                ),
                SizedBox(
                  height: 32,
                ),
                SubHeadingText(text: "Main Functionality"),
                SizedBox(
                  height: 8,
                ),
                _coreFunctionality(size)
              ],
            ),
          ),
        ));
  }



  Widget _heading(Size size) {
    return Row(
      children: [
        HeadingText(text: "Megathil"),
        SizedBox(
          width: 32,
        ),
        Image.asset(
          ImageConstant.megathilLogo,
          width: size.width * 0.3,
          height: 64,
        ),
      ],
    );
  }

  Widget _projDesc() {
    return DescriptionText(text: Content.megaDesc);
  }

  Widget _skillSet() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("• Flutter"),
        Text("• Architecture Setup"),
        Text("• MVVM"),
        Text("• Firebase Notification, Crashylitics"),
        Text("• In App purchase - iOS"),
        Text("• Reusable UI Components"),
        Text("• Razor pay integration"),
      ],
    );
  }

  Widget _coreFunctionality(Size size) {
    return SizedBox(
      width: size.width,
      child: Column(

        children: <Widget>[
           Card(
            elevation: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                      width: size.width,
                      height: 460,
                      child: VideoPlayerScreen()),
                   Padding(
                    padding:  EdgeInsets.only(top: 8.0),
                    child:  Text(Content.megaAnimation),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(ImageConstant.megaLocal, width: size.width,
                    height: 460,),
                  const Padding(
                    padding:  EdgeInsets.only(top: 8.0),
                    child:  Text(Content.megaLocalNotification),
                  )
                ],
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(ImageConstant.storeHandling, width: size.width,
                    height: 460,),
                  const Padding(
                    padding:  EdgeInsets.only(top: 8.0),
                    child:  Text(Content.megaStoreRelease),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
