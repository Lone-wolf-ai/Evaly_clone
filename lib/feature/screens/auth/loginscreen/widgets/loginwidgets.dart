import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class EvalyLogo extends StatelessWidget {
  const EvalyLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage(ImageCons.logo),
      fit: BoxFit.contain,
    ).box.height(60).width(double.infinity).make().centered();
  }
}

