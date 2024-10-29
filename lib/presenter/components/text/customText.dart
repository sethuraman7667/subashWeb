import 'package:flutter/material.dart';


class MyCustomText extends StatelessWidget {
  const MyCustomText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,);
  }
}
