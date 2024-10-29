import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/customButton.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/topNavbar.dart';
import 'package:personalporfolio/common/urlLauncherMixin.dart';

import 'package:unicons/unicons.dart';

import '../projects/projects.dart';

class DesktopDashboardScreen extends StatefulWidget {
  const DesktopDashboardScreen({super.key});

  @override
  State<DesktopDashboardScreen> createState() => _DesktopDashboardScreenState();
}

class _DesktopDashboardScreenState extends State<DesktopDashboardScreen> with UrlLauncher {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionOne(size: size),
            SizedBox(
              height: 150,
            ),
            _sectionTwo(size),
            SizedBox(
              height: 96,
            ),
            _sectionThree(size)
          ],
        ),
      ),
    );
  }

  Widget _sectionOne({required Size size}) {
    return TopNavbar(size: size, indexHighLight: 1,);
  }

  Widget _sectionTwo(Size size) {
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.5,
          child: Padding(
            padding: const EdgeInsets.only(left: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  " Hello, I am ",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                HeadingText(text: "Subash Sethuraman"),
                Text("SwiftUI | UIKit | Flutter Developer",
                  style: TextStyle(color: Theme
                      .of(context)
                      .primaryColor),),
                SizedBox(
                  height: 8,
                ),
                DescriptionText(text: Content.homeDesc),
                SizedBox(
                  height: 32,
                ),
                Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyCustomButton(
                        onTap: () {
                          launchAppStore(
                              "https://drive.google.com/file/d/13U4WDecSXR66KwaEMeKLevmw_nztst9j/view?usp=sharing");
                        },
                        heading: "Download Resume",
                        icons: Icon(UniconsLine.file_alt)),
                    SizedBox(
                      width: 24,
                    ),
                    MyCustomButton(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (
                              context) => ProjectsScreens()));
                        },
                        heading: "Projects",
                        icons: Icon(UniconsLine.mobile_android))
                  ],
                ),
                const SizedBox(height: 32,),
                NormalText(
                    text: "✨ This site was developed by me using Flutter Web ❤️.")
              ],
            ),
          ),
        ),
        SizedBox(
          width: size.width * 0.2,
        ),
        SizedBox(
            width: size.width * 0.2,
            child: Image.network(
              "https://en.pimg.jp/102/031/124/1/102031124.jpg",
              height: 300,
            ))
      ],
    );
  }


  Widget _sectionThree(Size size) {
    return Container(
      // height: 600,
      width: size.width,
      padding: EdgeInsets.all(32),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32,),
            HeadingText(text: "About Me"),
            Container(
              width: 160,
              height: 2,
              color: Colors.black,
            ),
            const SizedBox(height: 32,),
            SizedBox(
                width: size.width * 0.6,
                child: DescriptionText(text: Content.bitAboutMe)),

            // TextButton(onPressed: (){
            //   launchAppStore("https://link.springer.com/search?dc.creator=Subash%20Sethuraman");
            // }, child: Text(Content.myPaper)),

            const SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _exp(icon: Icons.badge_outlined,
                    exp: "4+ Years",
                    text: "Experience",
                    context: context),
                const SizedBox(width: 32,),
                _exp(icon: UniconsLine.file_alt,
                    exp: "5+",
                    text: "Projects",
                    context: context),
              ],),
            const SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }


  Widget _exp(
      {required String exp, required String text, required IconData icon, required BuildContext context }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,

      children: [
        Icon(icon, size: 48, color: Theme
            .of(context)
            .primaryColor,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NormalText(text: exp),
            SubHeadingText(text: text)
          ],)
      ],
    );
  }

}