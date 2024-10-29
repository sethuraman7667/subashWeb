import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/customButton.dart';
import 'package:personalporfolio/common/mobileDrawer.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/responsive.dart';
import 'package:personalporfolio/common/topNavbar.dart';
import 'package:personalporfolio/common/urlLauncherMixin.dart';

import 'package:unicons/unicons.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> with UrlLauncher {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: MobileDrawer(indexHighLight: 4),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResponsiveLayout(desktop: _sectionOne(size: size), mobile:  Row(
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
                Align(
                  alignment: Alignment.topLeft,
                  child: Builder(builder: (context) => // Ensure Scaffold is in context
                  IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () => Scaffold.of(context).openEndDrawer()
                  )),
                )
              ],
            ),),
            SizedBox(
              height: 64,
            ),
            _sectionTwo(size: size)
          ],
        ),
      ),
    );
  }

  Widget _sectionOne({required Size size}) {
    return TopNavbar(size: size, indexHighLight: 4,);
  }

  Widget _sectionTwo({required Size size}){
    return Container(
      height: 400,
      width: size.width,
      padding: EdgeInsets.all(32),
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32,),
            HeadingText(text: "Contact"),
            Container(
              width: 160,
              height: 2,
              color: Colors.black,
            ),
            const  SizedBox(height: 32,),
            Container(
               width: size.width * 0.5,
              child: FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  NormalText(text: "The best way to get in touch is by emailing me at"),
                  TextButton(onPressed: (){
                    final Uri emailLaunchUri = Uri(
                      scheme: 'mailto',
                      path: 'sethuraman.achi@gmail.com',
                    );
                    launchUrl(emailLaunchUri);
                  }, child: Text("sethuraman.achi@gmail.com", style: TextStyle(decoration: TextDecoration.underline),))
                ],),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NormalText(text: "or by calling "),
                TextButton(onPressed: (){
                  final Uri launchUri = Uri(
                    scheme: 'tel',
                    path: "7667170199",
                  );
                  launchUrl(launchUri);
                }, child: Text("(+91) 7667170199", style: TextStyle(decoration: TextDecoration.underline),))
              ],),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NormalText(text: "or by "),
                TextButton(onPressed: (){
                  launchAppStore("https://www.linkedin.com/in/subashsethu/");
                }, child: Text("Linkedin", style: TextStyle(decoration: TextDecoration.underline),))
              ],),


          ]
        ),
      ),
    );
  }
  
}