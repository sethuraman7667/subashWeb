import 'package:flutter/material.dart';
import 'package:personalporfolio/common/mobileDrawer.dart';
import 'package:personalporfolio/common/urlLauncherMixin.dart';
import 'package:personalporfolio/presenter/views/projects/mobileProjectTemplate/dewaMOM.dart';
import 'package:personalporfolio/presenter/views/projects/mobileProjectTemplate/foodApp.dart';
import 'package:personalporfolio/presenter/views/projects/mobileProjectTemplate/megathilProject.dart';
import 'package:personalporfolio/presenter/views/projects/mobileProjectTemplate/myneo.dart';
import 'package:personalporfolio/presenter/views/projects/mobileProjectTemplate/nParks.dart';
// import 'package:typing_text_animation/typing_text_animation.dart';
import 'package:unicons/unicons.dart';

import '../../../common/content.dart';
import '../../../common/customButton.dart';
import '../../../common/myCustomText.dart';
import '../projects/projects.dart';


class MobileProjects extends StatefulWidget {
  const MobileProjects({super.key});

  @override
  State<MobileProjects> createState() => _MobileProjectsState();
}

class _MobileProjectsState extends State<MobileProjects> with UrlLauncher {



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return  Scaffold(
      endDrawer: const MobileDrawer(indexHighLight: 2),
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const HeadingText(text: "My Projects"),
              Container(
                width: 160,
                height: 2,
                color: Colors.black,
              ),
              const SizedBox(
                height: 32,
              ),
              const DescriptionText(text: Content.projDesc),
              ListView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: const [
                  MobileMegathilProjects(),
                  MobileMyNeoProjects(),
                  MobileNParksProject(),
                  MobileDewaMom(),
                  MobileFoodAppProjects()

                  // FoodAppProjects()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }


}
