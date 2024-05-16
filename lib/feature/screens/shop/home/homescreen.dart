import 'package:evaly/common/card/banner/bannercarousel.dart';
import 'package:evaly/common/card/productcardwithtag.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/feature/screens/shop/home/widgets/appbar/appbar.dart';
import 'package:evaly/feature/screens/shop/home/widgets/drawer/drawer.dart';
import 'package:evaly/feature/screens/shop/home/widgets/bodypart/part1.dart';
import 'package:evaly/feature/screens/shop/home/widgets/bodypart/part2.dart';
import 'package:evaly/feature/screens/shop/home/widgets/shopcardlisttitle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: homeAppBar(),
      drawer:const MyDrawer(userName: "Joy", userEmail: "TanjimJOy7@gmail.com") ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BannerCarousel(imagePaths:[
              ImageCons.banner1,
              ImageCons.banner1,
              ImageCons.banner1
            ]).paddingSymmetric(horizontal: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Part1(),
            ),
            10.heightBox,
            const Part2(),
          ],
        ),
      ),
    );
  }
}


