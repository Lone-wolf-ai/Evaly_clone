import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Orderstatus extends StatelessWidget {
  const Orderstatus({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        "Canceled"
            .text
            .semiBold
            .white
            .make()
            .box
            .padding(const EdgeInsets.symmetric(horizontal: 3))
            .red700
            .leftRounded(value: 4)
            .make(),
        "COD"
            .text
            .semiBold
            .white
            .make()
            .box
            .padding(const EdgeInsets.symmetric(horizontal: 3))
            .orange500
            .rightRounded(value: 4)
            .make()
      ],
    );
  }
}
