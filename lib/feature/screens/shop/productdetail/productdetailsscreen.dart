import 'package:evaly/common/card/banner/bannercarousel.dart';
import 'package:evaly/common/card/productcardwithtag.dart';
import 'package:evaly/common/card/shopinfoandbuttoncard.dart';
import 'package:evaly/constant/imageconstant.dart';
import 'package:evaly/constant/stringconstant.dart';
import 'package:evaly/feature/screens/shop/home/widgets/appbar/widget/searchbar.dart';
import 'package:evaly/feature/screens/shop/productdetail/widgets/titleandcollection.dart';
import 'package:evaly/feature/screens/shop/productdetail/widgets/variants.dart';
import 'package:evaly/navigation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      bottomNavigationBar: const BottomNav(),
      appBar: AppBar(
        surfaceTintColor: Vx.white,
        title: const RoundedSearchBar(title: "Search Products"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.favorite_border_outlined,
                color: Vx.black,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.share,
                color: Vx.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BannerCarousel(
                borderRadius: 8,
                height: height * 0.4,
                imagePaths: const [
                  ImageCons.banner1,
                  ImageCons.banner1,
                  ImageCons.banner1
                ]).paddingSymmetric(horizontal: 10),
            10.heightBox,
            Flexible(
                child: "Title"
                    .text
                    .semiBold
                    .size(18)
                    .make()
                    .paddingSymmetric(horizontal: 10)),
            TileandCollections(
              titleontap: () {},
              individualontap: () {},
            ).paddingSymmetric(horizontal: 10),
            10.heightBox,
            const Divider(
              height: 1,
              color: Vx.gray200,
            ),
            8.heightBox,
            "Variants"
                .text
                .bold
                .size(16)
                .make()
                .paddingSymmetric(horizontal: 10),
            8.heightBox,
            const Variants().paddingSymmetric(horizontal: 10),
            16.heightBox,
            "Buy From"
                .text
                .bold
                .size(16)
                .make()
                .paddingSymmetric(horizontal: 10),
            8.heightBox,
            const ShopNameAddressPriceButtons()
                .paddingSymmetric(horizontal: 10),
            16.heightBox,
            "Description"
                .text
                .size(18)
                .bold
                .make()
                .paddingSymmetric(horizontal: 10),
            10.heightBox,
            Flexible(
                child: StringCons.expara.text
                    .make()
                    .paddingSymmetric(horizontal: 10)),
            20.heightBox,
            "Specification"
                .text
                .bold
                .size(18)
                .make()
                .paddingSymmetric(horizontal: 10),
            10.heightBox,
            ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 6,
              separatorBuilder: (BuildContext context, int index) {
                return 10.heightBox;
              },
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Expanded(child: "key".text.size(16).gray700.make()),
                    Expanded(child: "Value".text.size(16).black.make())
                  ],
                );
              },
            ).paddingSymmetric(horizontal: 10),
            16.heightBox,
            "Related Products"
                .text
                .bold
                .size(16)
                .make()
                .paddingSymmetric(horizontal: 10),
            const Divider(
              thickness: 10,
              color: Vx.gray100,
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 320),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return const ProductCardWithTag();
              },
            ).box.gray100.make(),
          ],
        ),
      ),
    );
  }
}
