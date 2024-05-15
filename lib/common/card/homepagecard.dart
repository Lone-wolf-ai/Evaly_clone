import 'package:evaly/common/button/showbutton.dart';
import 'package:evaly/common/card/productcard.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePageCard extends StatelessWidget {
  const HomePageCard({
    super.key,
    this.title = '',
    this.subtitle = '',
    this.onTap,
    this.color = Vx.white,
    this.textcolor = Vx.black,
    this.autoscroll = false,
    this.showall = true,
    this.applyrating = false,
    this.isSemibold=false
  });

  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final Color color;
  final Color textcolor;
  final bool autoscroll;
  final bool showall;
  final bool applyrating;
  final bool isSemibold;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title.text.color(textcolor).bold.size(18).make(),
                subtitle.text
                    .color(textcolor)
                    .fontWeight(FontWeight.w400)
                    .make(),
              ],
            ),
            if (showall) ShowAllButton(ontap: onTap),
          ],
        ),
        10.heightBox,
         ProductCardList(
          autoscroll: autoscroll,
          isSemibold:isSemibold ,
          applyrating:applyrating,
        ),
      ],
    )
        .box
        .color(color)
        .padding(
            const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10))
        .rounded
        .make()
        .box
        .make();
  }
}

class ProductCardList extends StatelessWidget {
  const ProductCardList({
    super.key,
    required this.autoscroll,
    this.isSemibold = false,
    this.applyrating = false,
  });
  final bool autoscroll;
  final bool isSemibold;
  final bool applyrating;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ScrollControllerManager()); // Get the controller
    controller.autoscroll.value = autoscroll;
    return ListView.separated(
      shrinkWrap: true,
      controller:
          controller._scrollController, // Conditionally assign controller
      clipBehavior: Clip.antiAliasWithSaveLayer,
      scrollDirection: Axis.horizontal,
      cacheExtent: 10,
      itemBuilder: (context, index) => ProductCard(
        applyrating: applyrating,
        isSemibold: isSemibold,
        title: 'hello',
        subtitle: 'bye',
        amount: '20',
        reduced: true,
        newprice: '1000',
        price: '1700',
        imgurl: ImageCons.watch1,
        isnetworkimg: false,
      ),
      separatorBuilder: (_, __) => 10.widthBox,
      itemCount: 10,
    ).box.height(180).make();
  }
}

class ScrollControllerManager extends GetxController {
  static ScrollControllerManager get instance => Get.find();
  final ScrollController _scrollController = ScrollController();
  final RxBool autoscroll = false.obs;

  double get scrollPosition => _scrollController.position.pixels;

  void loopToEndAndBack(
      Duration scrollDuration, Duration reverseDuration) async {
    await Future.delayed(
        const Duration(milliseconds: 500)); // Delay before starting animation

    if (autoscroll.value) {
      while (true) {
        final double maxScrollExtent =
            _scrollController.position.maxScrollExtent;
        if (maxScrollExtent > 0) {
          // Check if scroll extent is valid before animating
          await _scrollController.animateTo(
            maxScrollExtent,
            duration: scrollDuration,
            curve: Curves.linear,
          );
          await _scrollController.animateTo(
            0.0, // Scroll to the beginning
            duration: reverseDuration,
            curve: Curves.easeIn, // Use an easing curve for smoother reversal
          );
        }
      }
    }
  }

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 500), () {
      loopToEndAndBack(
          const Duration(seconds: 20), const Duration(seconds: 20));
    });
  }

  @override
  void onClose() {
    _scrollController.dispose();
    super.onClose();
  }
}
