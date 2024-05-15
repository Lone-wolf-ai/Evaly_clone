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
              const Part1(),
              SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    TitleSubtitleandButton(
                      title: 'Top Rated Shops',
                      subtitle: 'Loved by Customers Like You',
                      ontap: () {},
                      color: Vx.purple600,
                    ),
                    100.heightBox,
                  ],
                ),
              ).box.red100.width(double.infinity).topRounded().make()
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

class TitleSubtitleandButton extends StatelessWidget {
  const TitleSubtitleandButton({
    super.key,
    required this.ontap,
    required this.title,
    required this.subtitle,
    required this.color,
  });
  final VoidCallback ontap;
  final String title;
  final String subtitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RoundedColoredBox(color: color),
            10.widthBox,
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: title,
                    style: const TextStyle(
                        color: Vx.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  TextSpan(
                    text: '\n$subtitle',
                    style: const TextStyle(
                        color: Vx.black, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            )
          ],
        ),
        "Show More"
            .text
            .make()
            .box
            .white
            .rounded
            .padding(const EdgeInsets.symmetric(horizontal: 10, vertical: 2))
            .make()
            .onTap(() => ontap)
      ],
    );
  }
}

class RoundedColoredBox extends StatelessWidget {
  final Color color;
  final double width;
  final double height;

  const RoundedColoredBox({
    super.key,
    required this.color,
    this.width = 8,
    this.height = 35,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius:
            BorderRadius.circular(4), // Use width for rounded corner radius
      ),
    );
  }
}

class Part1 extends StatelessWidget {
  const Part1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
