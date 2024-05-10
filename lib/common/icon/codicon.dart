import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CODIcon extends StatelessWidget {
  const CODIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return "COD"
        .text
        .white
        .semiBold
        .sm
        .make()
        .box
        .amber500
        .rounded
        .padding(const EdgeInsets.symmetric(horizontal: 8, vertical: 2))
        .make();
  }
}