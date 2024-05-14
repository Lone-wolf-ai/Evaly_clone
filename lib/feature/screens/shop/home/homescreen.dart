import 'package:evaly/common/card/homepagecard.dart';
import 'package:evaly/common/card/homepagecardlineargradiant.dart';
import 'package:evaly/constant/colorconstant.dart';
import 'package:evaly/feature/screens/shop/home/widgets/homebannercard.dart';
import 'package:evaly/feature/screens/shop/home/widgets/homebuttons.dart';
import 'package:evaly/feature/screens/shop/home/widgets/searchbar.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeFiveButton(),
              const HomeBannerCard(),
              10.heightBox,
              const HomePageCardLinearGradiant(
                title: 'Deals of The Day',
                subtitle: 'Best of Prices,Top Products',
                lineracolor: [ColorConstant.sky, ColorConstant.parrot],
              ),
              10.heightBox,
              const HomePageCard(
                title: 'Trending Now',
                subtitle: 'Best Selling Products',
                color: Vx.red100,
              ),
              10.heightBox,
              const HomePageCard(
                applyrating: true,
                title: 'Popular Products',
                subtitle: 'Products You May Like',
                
                color: Vx.purple100,
              ),
            ],
          ),
        ),
      ),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      title: const RoundedSearchBar(),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none_outlined))
      ],
    );
  }
}
