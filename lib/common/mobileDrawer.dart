import 'package:flutter/material.dart';

import '../presenter/views/contact/contact.dart';
import '../presenter/views/home/home.dart';
import '../presenter/views/projects/projects.dart';

class MobileDrawer extends StatelessWidget {
  const MobileDrawer({super.key, required this.indexHighLight});
 final int indexHighLight;
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      width: 200,
      // backgroundColor: Colors.transparent,
      child: SafeArea(
        child: SizedBox(
          // color: Colors.white,
          height: 200,
          child: Padding(
            padding:  EdgeInsets.only(left: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32,),
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
          ),
        ),
      ),
    );
  }

  Widget _text({required String text, required bool isShowUnderLine}) {
    return Text(text,
        style: TextStyle(
          decoration: isShowUnderLine ? TextDecoration.underline : null,
        ));
  }

}
