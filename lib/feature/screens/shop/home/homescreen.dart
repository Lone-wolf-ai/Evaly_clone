import 'package:evaly/common/card/banner/bannercarousel.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/feature/screens/shop/home/widgets/appbar/appbar.dart';
import 'package:evaly/feature/screens/shop/home/widgets/drawer/drawer.dart';
import 'package:evaly/feature/screens/shop/home/widgets/bodypart/part1.dart';
import 'package:evaly/feature/screens/shop/home/widgets/bodypart/part2.dart';
import 'package:evaly/main.dart';
import 'package:evaly/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: homeScaffoldKey,
      bottomNavigationBar: const BottomNav(),
      appBar: homeAppBar(),
      drawer: MyDrawer(
        userName: "Joy",
        userEmail: "TanjimJOy7@gmail.com",
        scaffoldKey: homeScaffoldKey,
      ),
      body: CustomScrollView(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shrinkWrap: true,
        slivers: [
         
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                switch (index) {
                  case 0:
                    return const BannerCarousel(imagePaths: [
                      ImageCons.banner1,
                      ImageCons.banner1,
                      ImageCons.banner1
                    ]).paddingSymmetric(horizontal: 10);
                  case 1:
                    return const Part1().paddingSymmetric(horizontal: 10);
                  case 2:
                    return 10.heightBox;
                  case 3:
                    return const Part2();
                  default:
                    return Container(); // Placeholder for any additional widgets
                }
              },
              childCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
