import 'package:evaly/common/card/shopcard.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ShopCardList extends StatelessWidget {
  const ShopCardList({
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
    final controller =
        Get.put(ScrollControllerManager2()); // Get the controller
    controller.autoscroll.value = autoscroll;
    return ListView.separated(
      shrinkWrap: true,
      controller:
          controller._scrollController, // Conditionally assign controller
      clipBehavior: Clip.antiAliasWithSaveLayer,
      scrollDirection: Axis.horizontal,
      cacheExtent: 10,
      itemBuilder: (context, index) => const ShopCard(
        isnetworkimg: false,
        imgurl: ImageCons.logo,
        title: "halkjajdhfasdj",
      ),
      separatorBuilder: (_, __) => 10.widthBox,
      itemCount: 10,
    ).box.height(160).make();
  }
}

class ScrollControllerManager2 extends GetxController {
  static ScrollControllerManager2 get instance => Get.find();
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
