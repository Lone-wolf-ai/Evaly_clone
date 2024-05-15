import 'package:evaly/common/card/homepagecard.dart';
import 'package:evaly/common/card/homepagecardlineargradiant.dart';
import 'package:evaly/common/card/productcardwithtag.dart';
import 'package:evaly/constant/colorconstant.dart';
import 'package:evaly/feature/screens/shop/home/widgets/appbar.dart';
import 'package:evaly/feature/screens/shop/home/widgets/companycardlist.dart';
import 'package:evaly/feature/screens/shop/home/widgets/homebannercard.dart';
import 'package:evaly/feature/screens/shop/home/widgets/homebuttons.dart';
import 'package:evaly/feature/screens/shop/home/widgets/part1.dart';
import 'package:evaly/feature/screens/shop/home/widgets/searchbar.dart';
import 'package:evaly/feature/screens/shop/home/widgets/shopcardlisttitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Part1(),
            ),
            10.heightBox,
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ShopCardlistTitle(
                    ontap: () {},
                  ),
                  ShopCardlistTitle(
                    title: 'COD Shops',
                    subtitle: 'Enjoy Cash on Delivery',
                    color: Vx.orange500,
                    ontap: () {},
                  ),
                  ShopCardlistTitle(
                    title: 'B2B Shops',
                    subtitle: 'Exclusive Deals for Business',
                    color: Vx.emerald500,
                    ontap: () {},
                  ),
                  "Recently Added"
                      .text
                      .semiBold
                      .size(16)
                      .make()
                      .paddingOnly(left: 10, top: 10, bottom: 10),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing:10,
                      mainAxisSpacing: 10,
                      mainAxisExtent: 320
                    ),
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const ProductCardWithTag();
                    },
                  ),
                ],
              ),
            ).box.gray100.width(double.infinity).topRounded().make()
          ],
        ),
      ),
    );
  }
}
