import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class RoundedImg extends StatelessWidget {
  const RoundedImg(
      {super.key,
      required this.isnetworkimg,
      required this.imgurl,
      this.height = 140,
      this.width = 120});
  final bool isnetworkimg;
  final String imgurl;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return (isnetworkimg)
        ? Image(
            image: NetworkImage(imgurl),
          )
        : Image(
            image: AssetImage(imgurl),
          )
            .box
            .color(Vx.white)
            .height(height)
            .width(width)
            .p1 // Padding of 1 on all sides (optional)
            .roundedSM // Rounded corners (optional)
            .make();
  }
}