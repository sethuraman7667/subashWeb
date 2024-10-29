import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/dimension.dart';
import 'package:personalporfolio/common/imageConstant.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/videoPlayer.dart';
import 'package:unicons/unicons.dart';

import '../../../../common/customButton.dart';

class FoodAppProjects extends StatefulWidget {
  const FoodAppProjects({super.key});

  @override
  State<FoodAppProjects> createState() => _FoodAppProjectsState();
}

class _FoodAppProjectsState extends State<FoodAppProjects> {
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
                        Text("* This project  available for shenll internal developement")
                      ],
                    ),
                    SizedBox(width: 64,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(ImageConstant.foodAppDash, width: size.width * 0.2, height: 460,),
                            Image.asset(ImageConstant.foodAppProd, width: size.width * 0.2, height: 460,),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
                // SizedBox(height: 96,),
                // SubHeadingText(text: "Main Functionality"),
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
        HeadingText(text: "Food App"),
        SizedBox(width: 32,),
        Image.asset(ImageConstant.foodAppLogo, width: size.width * 0.08, height: 64,),
      ],
    );
  }

  Widget _projDesc() {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: DescriptionText(text: Content.foodAppDesc));
  }

  Widget _skillSet() {
    return SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("• SwiftUI"),
            Text("• MVVM"),
            Text("• MapKit"),
            Text("• Google Map"),
            Text("• Localization"),
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
