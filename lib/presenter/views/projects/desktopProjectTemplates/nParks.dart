import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/dimension.dart';
import 'package:personalporfolio/common/imageConstant.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/videoPlayer.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/customButton.dart';

class NParksProject extends StatefulWidget {
  const NParksProject({super.key});

  @override
  State<NParksProject> createState() => _NParksProjectState();
}

class _NParksProjectState extends State<NParksProject> {
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
                        Text("* Available exclusively for internal Singapore government use")
                      ],
                    ),
                    SizedBox(width: 64,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(ImageConstant.NParks, width: size.width * 0.3, height: 460,),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
                // SizedBox(height: 96,),
                // Text(text: "Main Functionality"),
                // SizedBox(height: 32,),
                // _coreFunctionality(size)
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
        Image.asset(ImageConstant.nparksLogo, width: size.width * 0.08, height: 64,),
      ],
    );
  }

  Widget _projDesc() {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: DescriptionText(text: Content.nParksDesc));
  }

  Widget _skillSet() {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("• SwiftUI"),
            Text("• Redux and Combine"),
            Text("• Offline storage"),
            Text("• NoSql Db"),
            Text("• Realm Query"),
            Text("• XCTest"),
          ],
        ));
  }

  Widget _coreFunctionality(Size size){
    return SizedBox(
      width: size.width,
      child: GridView.count(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: Dimension.tablet > size.width ? 2 : 3,
        children: <Widget>[
          const Card(
            elevation: 1,
            child: Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: VideoPlayerScreen()),
                    Text( "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever")
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Image.asset(ImageConstant.megathilDetailAnalysis)),
                    const Text( "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever")
                  ],
                ),
              ),
            ),
          ),
          Card(
            elevation: 1,
            child: Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(child: Image.asset(ImageConstant.storeHandling)),
                    const Text( "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever")
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
