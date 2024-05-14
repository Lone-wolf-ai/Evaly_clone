import 'package:evaly/common/card/widget/producttitle.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProducttitlewithVerification extends StatelessWidget {
  const ProducttitlewithVerification({
    super.key,
    required this.title,
    this.isverified = true,
    this.isSemibold=true
  });

  final String title;
  final bool isverified;
  final bool isSemibold;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (isverified)
          const Stack(
            children: [
              Icon(
                Icons.shield,
                size: 12,
                color: Vx.blue600,
              ),
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: Icon(
                  Icons.check,
                  size: 8,
                  color: Vx.white,
                ),
              ),
            ],
          ),
        2.widthBox,
        Producttitle(
          title: title,
          isSemibold: isSemibold,
        ),
      ],
    );
  }
}
