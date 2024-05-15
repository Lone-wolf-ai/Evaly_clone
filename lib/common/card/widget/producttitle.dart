import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Producttitle extends StatelessWidget {
  const Producttitle(
      {super.key,
      required this.title,
      this.isSemibold = true,
      this.iselipsis = true});
  final String title;
  final bool isSemibold;
  final bool iselipsis;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: title.text
            .fontWeight(isSemibold ? FontWeight.w500 : FontWeight.normal)
            .size(12)
            .black
            .ellipsis
            .make()
            .box
            .make());
  }
}

class Shoptitle extends StatelessWidget {
  const Shoptitle(
      {super.key,
      required this.title,
      this.isSemibold = true,
      this.iselipsis = true});
  final String title;
  final bool isSemibold;
  final bool iselipsis;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: title.text
            .fontWeight(isSemibold ? FontWeight.w500 : FontWeight.normal)
            .size(12)
            .make()
            .box
            .make());
  }
}
