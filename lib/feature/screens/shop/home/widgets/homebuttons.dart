import 'package:evaly/feature/screens/shop/account/accountscreen.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeFiveButton extends StatelessWidget {
  const HomeFiveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ButtonwithTitle(
            title: 'FAQ',
            color: Vx.green500,
            onpressd: () {},
            icon: Icons.question_mark_rounded),
        ButtonwithTitle(
            title: 'Wish List',
            color: Vx.red600,
            onpressd: () {},
            icon: Icons.favorite_border_rounded),
        ButtonwithTitle(
            title: 'Return Policy',
            color: Vx.yellow500,
            onpressd: () {},
            icon:Icons.edit_document),
        ButtonwithTitle(
            title: 'Categories',
            color: Vx.sky500,
            onpressd: () {},
            icon: Icons.category_outlined),
        ButtonwithTitle(
            title: 'Orders',
            color: Vx.amber500,
            onpressd: () {},
            icon: Icons.document_scanner_rounded),
      ],
    ).box.padding(const EdgeInsets.symmetric(vertical: 20)).make();
  }
}
