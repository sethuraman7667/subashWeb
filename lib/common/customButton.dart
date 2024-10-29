import 'package:flutter/material.dart';

class MyCustomButton extends StatelessWidget {
  const MyCustomButton(
      {super.key,
      required this.onTap,
      required this.heading,
      required this.icons});

  final Function() onTap;
  final Widget icons;
  final String heading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icons,
            Text(
              heading,
            )
          ],
        ));
  }
}
