import 'package:flutter/material.dart';
import 'package:personalporfolio/common/mobileDrawer.dart';
import 'package:personalporfolio/common/urlLauncherMixin.dart';
// import 'package:typing_text_animation/typing_text_animation.dart';
import 'package:unicons/unicons.dart';

import '../../../common/content.dart';
import '../../../common/customButton.dart';
import '../../../common/myCustomText.dart';
import '../projects/projects.dart';


class MobileDashboardScreen extends StatefulWidget {
  const MobileDashboardScreen({super.key});

  @override
  State<MobileDashboardScreen> createState() => _MobileDashboardScreenState();
}

class _MobileDashboardScreenState extends State<MobileDashboardScreen> with UrlLauncher {



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      endDrawer: const MobileDrawer(indexHighLight: 1),
      appBar: PreferredSize(
        preferredSize: Size(size.width, 96),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Padding(
          padding:  EdgeInsets.only(left: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(UniconsLine.user),
              SizedBox(width: 8,),
              Text("Subash Sethuraman")
            ],
          ),
        ),
        Builder(builder: (context) => // Ensure Scaffold is in context
        IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openEndDrawer()
        ))
      ],
    )),
      body:  SingleChildScrollView(
        child:  Column(
          children: [

            SizedBox(height: size.height * 0.1,),
            _sectionTwo(size),
            _sectionThree(size)
          ],
        ),
      ),
    );
  }


  Widget _sectionTwo(Size size) {
    return SizedBox(
      width: size.width ,
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  "https://en.pimg.jp/102/031/124/1/102031124.jpg",
                  height: 300,
                ),
              ],
            ),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.6,
                  child: MyCustomButton(
                      onTap: () {
                        launchAppStore(
                            "https://drive.google.com/file/d/13U4WDecSXR66KwaEMeKLevmw_nztst9j/view?usp=sharing");
                      },
                      heading: "Download Resume",
                      icons: Icon(UniconsLine.file_alt)),
                ),
              ],
            ),
            const SizedBox(height: 8,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.6,
                  child: MyCustomButton(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => ProjectsScreens()));
                      },
                      heading: "Projects",
                      icons: Icon(UniconsLine.mobile_android)),
                ),
              ],
            ),

            const SizedBox(height: 32,),
            NormalText(
                text: "✨ This site was developed by me using Flutter Web ❤️.")
          ],
        ),
      ),
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
