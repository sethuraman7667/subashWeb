import 'package:flutter/material.dart';
import 'package:personalporfolio/presenter/views/contact/contact.dart';
import 'package:personalporfolio/presenter/views/home/home.dart';
import 'package:personalporfolio/presenter/views/projects/projects.dart';
import 'package:unicons/unicons.dart';

import 'content.dart';
import 'myCustomText.dart';

class TopNavbar extends StatelessWidget {
  const TopNavbar(
      {super.key, required this.size, required this.indexHighLight});

  final Size size;
  final int indexHighLight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      const  SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Padding(
              padding:  EdgeInsets.only(left: 32.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Icon(UniconsLine.user),
                  SizedBox(
                    width: 8,
                  ),
                  Text(Content.name)
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: _text(
                      text: "About Me", isShowUnderLine: indexHighLight == 1),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProjectsScreens()));
                    },
                    child: _text(
                        text: "Projects",
                        isShowUnderLine: indexHighLight == 2)),
                TextButton(
                    onPressed: () {},
                    child: _text(
                        text: "Resume", isShowUnderLine: indexHighLight == 3)),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContactScreen()));
                    },
                    child: _text(
                        text: "Contact", isShowUnderLine: indexHighLight == 4)),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 32.0),
              child: TextButton(
                  onHover: (val) {},
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.dark_mode_outlined),
                      SizedBox(
                        width: 4,
                      ),
                      NormalText(text: "Color Mode"),
                    ],
                  )),
            ),
          ],
        )
      ],
    );
  }

  Widget _text({required String text, required bool isShowUnderLine}) {
    return Text(text,
        style: TextStyle(
          decoration: isShowUnderLine ? TextDecoration.underline : null,
        ));
  }
}
