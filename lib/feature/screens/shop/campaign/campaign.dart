import 'package:evaly/common/card/banner/bannercarousel.dart';
import 'package:evaly/common/card/productcardwithtag.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/feature/screens/shop/campaign/widget/customheader1.dart';
import 'package:evaly/feature/screens/shop/home/widgets/appbar/widget/searchbar.dart';
import 'package:evaly/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';
import 'package:velocity_x/velocity_x.dart';

class CampaignScreen extends StatelessWidget {
  const CampaignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Vx.white,
      bottomNavigationBar: const BottomNav(),
      appBar: AppBar(
        surfaceTintColor: Vx.white,
        title: const RoundedSearchBar(),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.share))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            10.heightBox,
            const BannerCarousel(
              imagePaths: [
                ImageCons.banner1,
                ImageCons.banner1,
                ImageCons.banner1,
              ],
            ).paddingSymmetric(horizontal: 10),
            10.heightBox,
            SizedBox(
              width: w,
              child: StickyHeader(
                header: CustomHeader1(
                  sort: () {},
                  filter: () {},
                ),
                content: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 320,
                  ),
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const ProductCardWithTag();
                  },
                ).box.gray100.padding(const EdgeInsets.only(top: 10)).make(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




