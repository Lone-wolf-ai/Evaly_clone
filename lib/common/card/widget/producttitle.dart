import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Producttitle extends StatelessWidget {
  const Producttitle({
    super.key,
    required this.title,
    this.isSemibold=true
  });
  final String title;
  final bool isSemibold;
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: title.text
            .fontWeight(isSemibold ? FontWeight.w500 : FontWeight.normal)
            .ellipsis
            .size(14)
            .maxLines(1)
            .make());
  }
}
