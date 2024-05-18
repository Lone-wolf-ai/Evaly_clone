import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Customimageicon extends StatelessWidget {
  const Customimageicon({
    super.key,
    required this.ontap,
    this.img = ImageCons.sort,
    this.iconcolor = Vx.black,
    this.bgcolor = Vx.white,
    this.size = 20,
  });
  final VoidCallback ontap;
  final String img;
  final Color iconcolor;
  final Color bgcolor;
  final double size;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: bgcolor,
      child: ImageIcon(
        AssetImage(img),
        size: size,
        color: iconcolor,
      ).onTap(ontap),
    );
  }
}