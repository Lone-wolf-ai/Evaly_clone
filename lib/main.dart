import 'package:evaly/common/card/homepagecard.dart';
import 'package:evaly/common/card/homepagecardlineargradiant.dart';
import 'package:evaly/constant/colorconstant.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavigationBarMenue(),
    );
  }
}

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BannerCarousel(imagePaths: [
              ImageCons.banner1,
              ImageCons.banner1,
              ImageCons.banner1
            ]),
            const HomePageCardLinearGradiant(
              title: 'Deals of The Day',
              subtitle: 'Best of Prices,Top Products',
              lineracolor: [ColorConstant.sky, ColorConstant.parrot],
            ),
            10.heightBox,
            const HomePageCard(
              title: 'Deals of The Day',
              subtitle: 'Best of Prices,Top Products',
              color: Vx.red200,
            )
          ],
        ),
      ),
    );
  }
}

class BannerCarousel extends StatefulWidget {
  final List<String> imagePaths;
  final double borderRadius;

  const BannerCarousel(
      {super.key, required this.imagePaths, this.borderRadius = 12.0});

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            child: PageView.builder(
              controller: PageController(viewportFraction: 1.0),
              onPageChanged: (value) => setState(() => _currentPage = value),
              itemCount: widget.imagePaths.length,
              itemBuilder: (context, index) {
                return Image.asset(
                  widget.imagePaths[index],
                  fit: BoxFit.cover,
                );
              },
            ),
          ),
        ),
        Positioned(
          bottom:
              BorderSide.strokeAlignOutside + 5, // Adjust position as needed
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              widget.imagePaths.length,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    color: _currentPage == index ? Vx.amber500 : Colors.white,
                    shape: BoxShape.circle,
                  ),
                  width: 6.0, // Adjust dot size as needed
                  height: 6.0, // Adjust dot size as needed
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
