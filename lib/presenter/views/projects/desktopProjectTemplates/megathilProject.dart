import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/dimension.dart';
import 'package:personalporfolio/common/imageConstant.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/urlLauncherMixin.dart';
import 'package:personalporfolio/common/videoPlayer.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/customButton.dart';

class MegathilProject extends StatefulWidget {
  const MegathilProject({super.key});

  @override
  State<MegathilProject> createState() => _MegathilProjectState();
}

class _MegathilProjectState extends State<MegathilProject> with UrlLauncher {
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
                            // SizedBox(
                            //   width: 24,
                            // ),
                            // MyCustomButton(
                            //     onTap: () {},
                            //     heading: "Projects",
                            //     icons: Icon(UniconsLine.mobile_android))
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      width: 64,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              ImageConstant.megathilDash,
                              width: size.width * 0.2,
                              height: 460,
                            ),
                            Image.asset(
                              ImageConstant.megathilDetailAnalysis,
                              width: size.width * 0.2,
                              height: 460,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 96,
                ),
                SubHeadingText(text: "Main Functionality"),
                SizedBox(
                  height: 32,
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
          width: size.width * 0.08,
          height: 64,
        ),
      ],
    );
  }

  Widget _projDesc() {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: DescriptionText(text: Content.megaDesc));
  }

  Widget _skillSet() {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: const Column(
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
        ));
  }

  Widget _coreFunctionality(Size size) {
    return SizedBox(
      width: size.width,
      child: GridView.count(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: Dimension.tablet > size.width ? 2 : 3,
        children: <Widget>[
          const Card(
            elevation: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(child: VideoPlayerScreen()),
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
                  Expanded(child: Image.asset(ImageConstant.megaLocal)),
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
                  Expanded(child: Image.asset(ImageConstant.storeHandling)),
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
