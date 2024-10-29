import 'package:flutter/material.dart';
import 'package:personalporfolio/common/content.dart';
import 'package:personalporfolio/common/myCustomText.dart';
import 'package:personalporfolio/common/topNavbar.dart';
import 'package:personalporfolio/presenter/views/projects/desktopProjectTemplates/dewaMOM.dart';
import 'package:personalporfolio/presenter/views/projects/desktopProjectTemplates/foodApp.dart';
import 'package:personalporfolio/presenter/views/projects/desktopProjectTemplates/megathilProject.dart';
import 'package:personalporfolio/presenter/views/projects/desktopProjectTemplates/myneo.dart';
import 'package:personalporfolio/presenter/views/projects/desktopProjectTemplates/nParks.dart';

class DesktopProjects extends StatelessWidget {
  const DesktopProjects({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(size.width, 96),
          child: TopNavbar(size: MediaQuery.of(context).size, indexHighLight: 2,)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
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
            SizedBox(
                width: size.width * 0.7,
                child: const DescriptionText(text: Content.projDesc)),
            ListView(
              shrinkWrap: true,
              // physics: ,
              children: const [
                MegathilProject(),
                MyNeoProjects(),
                NParksProject(),
                DewaMom(),
                FoodAppProjects()
              ],
            )
          ],
        ),
      ),
    );
  }
}
