import 'package:evaly/common/button/circulariconbutton.dart';
import 'package:evaly/common/icon/customimgicon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key, required this.sort, required this.filter,
  });

  final VoidCallback sort;
  final VoidCallback filter;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        "Products".text.bold.size(18).make().paddingSymmetric(horizontal: 10),
        const Spacer(),
        Customimageicon(
          ontap: () {},
        ),
        CustomIconButton(
          icon: Icons.filter_alt,
          onPressed: () {},
          iconcolor: Vx.black,
          backgroundColor: Vx.white,
        ).paddingSymmetric(horizontal: 10)
      ],
    ).box.gray100.padding(const EdgeInsets.symmetric(vertical: 5)).make();
  }
}