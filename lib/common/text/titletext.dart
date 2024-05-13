import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key, required this.title,  this.size=24});
  final String title;
  final double size;
  @override
  Widget build(BuildContext context) {
    return  title.text.extraBold.size(size).make();
  }
}