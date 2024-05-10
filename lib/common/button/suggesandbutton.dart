import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Suggandbutton extends StatelessWidget {
  const Suggandbutton({
    super.key,
    required this.title,
    required this.buttontitle,
    required this.buttontitlecolor,
    this.ontap,  this.titlecolor=Vx.gray500,
  });
  final String title;
  final Color titlecolor;
  final String buttontitle;
  final Color buttontitlecolor;
  final VoidCallback? ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        title.text.semiBold.color(titlecolor).make(),
        buttontitle.text
            .color(buttontitlecolor)
            .extraBold
            .make()
            .onTap(() => ontap)
      ],
    );
  }
}
