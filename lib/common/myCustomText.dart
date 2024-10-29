import 'package:flutter/material.dart';

class HeadingText extends StatelessWidget {
  const HeadingText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, ));
  }
}

class SubHeadingText extends StatelessWidget {
  const SubHeadingText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300, ));
  }
}


class NormalText extends StatelessWidget {
  const NormalText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

class DescriptionText extends StatelessWidget {
  const DescriptionText({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, letterSpacing: 1.5,),
      textAlign: TextAlign.justify,);
  }
}