import 'package:evaly/feature/screens/shop/account/accountscreen.dart';
import 'package:evaly/feature/screens/shop/account/widget/orderlist/orderlist.dart';
import 'package:evaly/feature/screens/shop/account/widget/wishlist.dart';
import 'package:evaly/feature/screens/shop/home/categories/categories.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
            onpressd: ()=>Get.to(()=>const Wishlist()),
            icon: Icons.favorite_border_rounded),
        
        ButtonwithTitle(
            title: 'Return Policy',
            color: Vx.yellow500,
            onpressd: () {},
            icon: Icons.edit_document),
       
        ButtonwithTitle(
            title: 'Categories',
            color: Vx.sky500,
            onpressd: ()=>Get.to(()=>const CategoryScreen()),
            icon: Icons.category_outlined),
        
        ButtonwithTitle(
            title: 'Orders',
            color: Vx.amber500,
            onpressd: ()=>Get.to(()=>const Orderlist()),
            icon: Icons.document_scanner_rounded),
        
      ],
    ).box.padding(const EdgeInsets.symmetric(vertical: 16)).make();
  }
}
