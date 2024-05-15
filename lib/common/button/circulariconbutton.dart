import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    this.backgroundColor = Vx.gray100,
    this.iconcolor = Vx.white,
    required this.icon,
    this.onPressed,  this.size=22,  this.minimumSize,
  });
  final Color? backgroundColor;
  final Color? iconcolor;
  final IconData icon;
  final VoidCallback? onPressed;
  final double size;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {},
        style: IconButton.styleFrom(backgroundColor: backgroundColor,minimumSize: minimumSize),
        icon: Icon(
          icon,
          size: size,
          color: iconcolor,
        ));
  }
}
