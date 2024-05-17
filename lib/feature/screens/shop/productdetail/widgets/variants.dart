import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class Variants extends StatelessWidget {
  const Variants({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      child: ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        separatorBuilder: (BuildContext context, int index) {
          return 10.widthBox;
        },
        itemBuilder: (BuildContext context, int index) {
          return "Title"
              .text
              .gray600
              .semiBold
              .size(14)
              .make()
              .centered()
              .paddingSymmetric(horizontal: 8, vertical: 0)
              .box
              .roundedSM
              .gray300
              .make();
        },
      ),
    );
  }
}
